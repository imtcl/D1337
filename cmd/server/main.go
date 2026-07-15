package main

import (
	"context"
	"cyberstrike-ai/internal/app"
	"cyberstrike-ai/internal/config"
	"cyberstrike-ai/internal/logger"
	"cyberstrike-ai/internal/termout"
	"flag"
	"fmt"
	"os"
	"os/signal"
	"strings"
	"syscall"
)

func main() {
	var configPath = flag.String("config", "config.yaml", "Path to config file")
	var httpsBootstrap = flag.Bool("https", false, "Enable HTTPS: uses in-memory self-signed cert if tls_cert_path/tls_key_path not configured (for local testing); matches run.sh default behavior")
	flag.Parse()

	// Environment variable compatibility (for systemd/docker scenarios without args)
	if !*httpsBootstrap {
		v := strings.TrimSpace(os.Getenv("CYBERSTRIKE_HTTPS"))
		if v == "1" || strings.EqualFold(v, "true") || strings.EqualFold(v, "yes") {
			*httpsBootstrap = true
		}
	}

	// Load configuration
	cp := strings.TrimSpace(*configPath)
	if cp == "" {
		cp = "config.yaml"
	}
	if strings.HasPrefix(cp, "-") {
		fmt.Fprintf(os.Stderr, "Invalid -config path %q.\nIf you also need HTTPS, use: ./cyberstrike-ai --https -config config.yaml(-config must be followed by yaml file path).\n", cp)
		os.Exit(2)
	}
	localConfig, err := config.EnsureLocalConfig(cp)
	if err != nil {
		fmt.Printf("Failed to load config: %v\n", err)
		return
	}

	cfg, err := config.Load(cp)
	if err != nil {
		fmt.Printf("Failed to load config: %v\n", err)
		return
	}
	if localConfig.Created {
		termout.PrintConfigCreated()
	}

	if *httpsBootstrap {
		config.ApplyDevHTTPSBootstrap(cfg)
	}

	port := cfg.Server.Port
	if port <= 0 {
		port = 8080
	}
	scheme := "http"
	if config.MainWebUIUsesHTTPS(&cfg.Server) {
		scheme = "https"
	}
	termout.PrintStartupWebUI(termout.StartupWebUIOptions{
		Scheme:       scheme,
		Port:         port,
		SelfSigned:   scheme == "https" && cfg.Server.TLSAutoSelfSign,
		HTTPRedirect: scheme == "https" && config.ServerHTTPRedirectEnabled(&cfg.Server),
	})

	// When MCP enabled and auth_header_value is empty, auto-generate random key and write back to config
	if err := config.EnsureMCPAuth(cp, cfg); err != nil {
		fmt.Printf("MCP auth config failed: %v\n", err)
		return
	}
	if cfg.MCP.Enabled {
		config.PrintMCPConfigJSON(cfg.MCP)
	}

	// Initialize logger
	log := logger.New(cfg.Log.Level, cfg.Log.Output)

	// Create cancellable root context for graceful shutdown
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	// Listen for system signals
	sigCh := make(chan os.Signal, 1)
	signal.Notify(sigCh, syscall.SIGINT, syscall.SIGTERM)

	// Create application
	application, err := app.New(cfg, log, cp)
	if err != nil {
		log.Fatal("Application init failed", "error", err)
	}

	// Listen for signals in background
	go func() {
		sig := <-sigCh
		log.Info("Received system signal, starting graceful shutdown: " + sig.String())
		application.Shutdown()
		cancel()
	}()

	// Start server (pass context for graceful shutdown support)
	if err := application.RunWithContext(ctx); err != nil {
		// Context cancellation shutdown is not an error
		if ctx.Err() != nil {
			log.Info("Server gracefully shut down")
		} else {
			log.Fatal("Server startup failed", "error", err)
		}
	}
}
