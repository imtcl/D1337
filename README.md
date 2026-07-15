<div align="center">
  <img src="images/logo.png" alt="D1337 Logo" width="200">
  
  # D1337
  
  **AI-Powered Cybersecurity Platform**
  
  *by D1337 Sovereign Labs*
  
  [English](README.md) | [Indonesia](README_ID.md)
</div>

---

Penetration testing, OSINT, digital forensics, and vulnerability management - powered by specialized AI models built for elite security professionals.

D1337 connects planning, execution, human oversight, evidence, and replay in one auditable workspace. Built in Go, it combines AI-powered agents, MCP-native tools, RAG knowledge, visual workflows, and attack-chain modeling for authorized security operations.

> **IMPORTANT:** Use D1337 only on systems you own or are explicitly authorized to test.

## Features

### Agents and Orchestration
- 🤖 **Agentic Execution** - Natural-language intent to governed security actions
- 🧩 **Multi-Agent Orchestration** - Deep, Plan-Execute, and Supervisor modes
- 🔀 **Graph Workflows** - Visual flow builder with conditions and approvals
- 🎭 **Role-Based Testing** - Focused prompts for security scenarios

### Tools and Knowledge
- 🧰 **100+ Security Tools** - Nmap, SQLMap, Nuclei, Metasploit, and more
- 🔌 **MCP Integration** - HTTP, stdio, SSE, external federation
- 📚 **Knowledge Base** - RAG retrieval with reranking
- 🖼️ **Vision Analysis** - Screenshot and UI analysis

### Governance and Audit
- 🧑‍⚖️ **Human in the Loop** - Approval modes and audit trails
- 🔐 **Platform RBAC** - Multi-user with scoped permissions
- 🔒 **Security Audit** - Authenticated access and evidence retention

### Security Operations
- 📂 **Projects & Attack Chains** - Cross-session facts and graph views
- 🛡️ **Vulnerability Management** - Severity tracking and lifecycle
- 🐚 **WebShell Management** - Virtual terminal and file operations
- 📡 **Built-in C2** - Listeners, beacons, sessions, and payloads

## Quick Start

```bash
git clone https://github.com/imtcl/D1337.git
cd D1337
chmod +x run.sh && ./run.sh
```

**Prerequisites:**
- Go 1.25+
- Python 3.10+

After startup:
1. Open `https://127.0.0.1:8080/` (accept self-signed cert warning)
2. Login with auto-generated admin credentials (shown in terminal)
3. Configure your OpenAI-compatible API in Settings

## Tool Categories

| Category | Tools |
|----------|-------|
| Network Scanners | nmap, masscan, rustscan, arp-scan |
| Web Scanners | sqlmap, nikto, gobuster, ffuf, nuclei |
| Subdomain Enum | subfinder, amass, findomain |
| Space Engines | fofa, zoomeye, shodan |
| Exploitation | metasploit, msfvenom, pwntools |
| Post-Exploitation | linpeas, winpeas, mimikatz, bloodhound |
| Forensics | volatility, foremost, binwalk |

## Documentation

- [Configuration](docs/en-US/configuration.md)
- [Security Hardening](docs/en-US/security-hardening.md)
- [API Reference](docs/en-US/api-reference.md)
- [Developer Guide](docs/en-US/developer-guide.md)

## License

Apache License 2.0

---

<div align="center">
  <strong>D1337 Sovereign Labs</strong><br>
  Advanced AI Research, Software Development, and Cybersecurity Consulting
</div>
