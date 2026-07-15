# D1337 — KAIROS Offensive Operations Skill

> **Elite offensive security operations skill designed to SURPASS XBOW (#1 HackerOne, Accenture-backed) and Mythos (Anthropic's 85.4% OSWorld model).**
>
> 7-layer architecture | Full kill chain (PTES) | Zero-FP validation | <$50/engagement

---

## What is D1337?

D1337 is the skill definition for **KAIROS** — a research-backed AI agent for autonomous penetration testing and red team operations. It operates on a 7-layer architecture with deterministic validation, graduated autonomy, and full kill-chain coverage from scope definition through reporting.

**Philosophy**: Operator-in-Command. Human directs, KAIROS executes. NO academic simulation — tactical only.

## Repository Structure

```
D1337/
├── SKILL.md                          # Core skill definition (7-layer architecture)
├── d1337-agent.md                    # Complete agent definition
├── README.md                         # This file
├── references/                       # Kill-chain rule files (9 phases)
│   ├── rule-00-scope.md              # MANDATORY — scope enforcement before ANY action
│   ├── rule-01-recon.md              # Reconnaissance (passive + active)
│   ├── rule-02-weaponization.md      # Payload crafting & CVE retrieval
│   ├── rule-03-delivery.md           # Delivery vector selection
│   ├── rule-04-exploitation.md       # TDD exploitation pipeline
│   ├── rule-05-privesc.md            # Privilege escalation (Linux/Windows/AD)
│   ├── rule-06-lateral.md            # Lateral movement & C2
│   ├── rule-07-post-exploit.md       # Persistence, credential access, cleanup
│   └── rule-08-reporting.md          # Evidence template & severity scale
└── scripts/                          # Arsenal utilities
    ├── arsenal-ls.sh                 # List arsenal inventory
    └── arsenal-search.sh             # Search across arsenal
```

## Quick Start

1. **Read the skill**: `SKILL.md` — understand the 7-layer architecture
2. **Check the agent**: `d1337-agent.md` — complete operational specification
3. **Load scope first**: `references/rule-00-scope.md` — MANDATORY before any action
4. **Navigate kill chain**: Load rules on-demand as phases progress (P0 → P8)

## Key Features

| Feature | Description |
|---------|-------------|
| **7-Layer Architecture** | Infrastructure → Execution → Exploit → Validation → Safety → Learning → Operator |
| **Dynamic Model Router** | CASTER-based routing: 72.4% cost reduction vs monolithic |
| **MCP Tool Grounding** | 3-layer approach targeting >90% accuracy |
| **Zero-FP Validation** | 35 vuln classes with deterministic verification |
| **4D Budgets** | Token/Step/Time/Cost enforced at infrastructure layer |
| **Graduated Autonomy** | Level 0-4, default Level 1 (RECON AUTO) |
| **Full Kill Chain** | PTES-aligned, 9 phases (P0-P8), non-linear execution |
| **TDD Pipeline** | TEST before EXPLOIT — every time, no exceptions |
| **3-Tier Sandbox** | Kata → gVisor → Docker isolation |
| **Continuous Learning** | GEPA + Success-case RAG + Weekly LoRA |

## Benchmarks

| Metric | Target |
|--------|--------|
| Cost/engagement | <$50 (120x cheaper than XBOW) |
| MCP tool pass rate | >90% |
| False positive rate | 0% (deterministic) |
| CyberGym | >85% |

## Safety

- **4-layer defense**: Governance → Containment → Runtime → Observability
- **12 human approval gates** across P2-P7
- **Kill switch**: Soft stop → Hard stop → Emergency isolation → State capture
- **Scope enforcement**: Mandatory at EVERY tool call
- **EU AI Act compliant**: Human oversight for all destructive actions

## Cleanup Notice

This repository was previously overwritten with the wrong project (D1337 Sovereign Labs platform). The correct D1337 skill files have been restored. If you see leftover folders (`agents/`, `cmd/`, `docs/`, `images/`, `internal/`, `knowledge_base/`, `mcp-servers/`, `plugins/`, `roles/`, `skills/`, `tools/`, `web/`) or files (`go.sum`, `requirements.txt`, `run.sh`, `upgrade.sh`, `config.example.yaml`, `README_ID.md`, `.gitignore`, `LICENSE`) from the old project, please delete them manually:

```bash
git clone https://github.com/imtcl/D1337.git
cd D1337
# Remove leftover folders from wrong repo
rm -rf agents cmd docs images internal knowledge_base mcp-servers plugins roles skills tools web
# Remove leftover files from wrong repo
rm -f go.sum requirements.txt run.sh upgrade.sh config.example.yaml README_ID.md .gitignore LICENSE
# Keep only D1337 skill files
git add -A
git commit -m "Cleanup: Remove all wrong repo artifacts"
git push origin main
```

## Author

Labs Research — KAIROS Agent

## Classification

AUTHORIZED USE ONLY — Explicit written authorization required before ANY offensive action.
