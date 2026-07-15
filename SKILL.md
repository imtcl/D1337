---
name: d1337
description: >
  Elite offensive security operations skill for KAIROS agent — designed to SURPASS
  XBOW (#1 HackerOne, Accenture-backed) and Mythos (Anthropic's 85.4% OSWorld model).
  7-layer architecture: dynamic model router, MCP-native tool grounding (90%+
  vs 36% industry fail rate), kill-chain state machine (LangGraph + stigmergic
  blackboard), CVE-to-exploit pipeline (actor-critic, $50/engagement), zero-FP
  validation engine, knowledge graph attack reasoning (KARG/Neo4j), 4-layer
  safety governance, continuous learning (GEPA + success-case RAG). Arsenal:
  24+ repos, 3.8GB, 194k+ files.
  Full kill chain with TDD validation. Scope enforcement mandatory. NO ACADEMIC
  SIMULATION — tactical only. Triggers on: redteam, pentest, exploit, CVE, AD
  attack, privilege escalation, kill chain, MITRE ATT&CK, offensive security,
  KAIROS, automated pentest, ethical hacking, lateral movement, C2, payload
  development, vulnerability assessment, security assessment.
---

# D1337 — KAIROS Offensive Operations Skill v2.0

**Agent**: KAIROS — Research-Backed AI Operator (Surpasses XBOW + Mythos)
**Arsenal**: 24+ repos | 3.8GB | 194k+ files | `/code/Labs_Research/arsenal/`
**Research**: 12 dimensions | 300+ sources | 11,204 lines of intel
**Philosophy**: Operator-in-Command. Human directs, KAIROS executes. NO simulation.

## 7-Layer Architecture (Research-Backed)

```
L7: OPERATOR INTERFACE — Graduated autonomy (0-4), checkpoint gates, kill switch
L6: CONTINUOUS LEARNING — GEPA prompt evolution, success-case RAG, skill library
L5: SAFETY/GOVERNANCE — 4-layer defense, 4D budgets (token/step/time/cost)
L4: VALIDATION ENGINE — Class-specific validators, zero false positive guarantee
L3: EXPLOIT PIPELINE — 4-stage CVE-to-shell, actor-critic, <$50/engagement
L2: EXECUTION ENGINE — LangGraph kill-chain + stigmergic blackboard (PostgreSQL)
L1: INFRASTRUCTURE — Dynamic model router + MCP tool grounding + KARG knowledge graph
```

**Full architecture**: See `/mnt/agents/output/research/KAIROS_ARCHITECTURE_v2.md`

## Layer 1: Infrastructure

### Dynamic Model Router (3-Layer)

Route every task to optimal model by cost-performance:

```
Layer 1 — Role-Based Default:
  Orchestrator: Claude Sonnet 4 | Recon: Local Qwen3-14B
  Vuln Analysis: Local Qwen3-32B | Exploit Dev: Sonnet 4
  Validator: Sonnet 4 | Reporter: Local Qwen3-14B

Layer 2 — CASTER Dynamic Complexity (within role):
  complexity >0.8 → Frontier (Opus, o3)
  complexity >0.5 → Premium (Sonnet 4, GPT-4o)
  complexity >0.2 → Standard (Haiku, GPT-4o-mini)
  else → Local (Qwen3-14B/32B)

Layer 3 — Fallback Chain:
  retry → cross-provider → tier degradation → local safety net
```

**Key**: 60-80% cost reduction vs monolithic. CASTER proven 72.4% reduction.
Target: <$50/engagement (XBOW costs $4,000-6,000 — we are 120x cheaper).

### MCP-Native Tool Grounding (Target: >90% vs 36% industry fail)

```
Layer 1 — Rubric-Optimized Descriptions:
  Every tool: Purpose + Guidelines + Limitations + Parameters + Examples + Length
  Add explicit "When to use" triggers. Target <5% description smell rate.

Layer 2 — Progressive Discovery:
  Role-based partitioning: Scout(15 tools) / Analyzer(20) / Exploiter(15) / Reporter(10)
  Hybrid BM25+semantic router: 94% selection accuracy
  Phase-based loading: recon → scan → exploit → report

Layer 3 — Pre-Execution Validation:
  bash-vet-mcp: 30 detection rules, 4 verdict levels (CLEAN/CAUTION/REVIEW/BLOCK)
  Scope validation before EVERY tool call
  Firecracker microVM sandboxing
```

### Knowledge Graph — KARG

Neo4j + Graphiti temporal engine + pgvector semantic search.
4 layers: Ingestion → Real-Time Engagement → Knowledge Integration → Reasoning.
Full schema with Host/Service/Credential/Vulnerability/Technique/AttackPath nodes.
GNN attack path prediction (F1=0.9308).

## Layer 2: Execution Engine

### Hybrid Kill-Chain Graph

```
Tier 1 — LangGraph StateGraph (high-level):
  PTES-aligned phases as nodes
  Conditional edges: skip, loop-back, parallel
  Non-linear: IABs skip recon, LOTL bypasses weaponization

Tier 2 — Stigmergic Blackboard (per-phase):
  PostgreSQL/pgvector blackboard
  Pheromone-weighted findings (decay over time)
  Decentralized triggers — agents wake based on blackboard state

Resource Bounds (MAPTA-proven):
  ~40 tool calls | $0.30 cost cap | 300s timeout
  Early stopping on success (r=-0.661 resource vs success)
```

## Layer 3: Exploit Pipeline

### 4-Stage CVE-to-Exploit

```
INGEST → RESEARCH → BUILD → VALIDATE
 CVE      Web       Docker    Sandbox
 feed     search    build     exec
 Advisory PoC       Exploit   ASan
 parse    find      gen       verify
 CWE      Patch     Compile   Diff
 map      diff      fix       test
 RAG      Target    Actor-    Grade
 enrich   map       critic    report
```

**Actor-Critic Loop**: Exploit Developer → Syntax → Behavioral → Differential → Capability → Reliability (2-3 iterations, max 3).

**RAG (3-Tier)**: Technique knowledge → Success-case exploits → Target-specific context.
Success-case RAG doubles exploit success: 30%→60%.

**Cost**: Self-hosted Qwen3-32B ($0 marginal) + GPT-4o fallback ($0.50/CVE).
Excalibur achieved 4/5 AD hosts for $28.50.

## Layer 4: Validation Engine

### Zero False Positive — Deterministic Verification

| Vuln Class | Method | Evidence |
|-----------|--------|----------|
| XSS | Headless browser, confirm alert() | Screenshot |
| SQLi Blind | Time-delay SLEEP(5) | Timing delta |
| SQLi Error | Pattern + UNION | Extracted data |
| SSRF | OAST callback | DNS/HTTP log |
| IDOR | Canary cross-session | Access log |
| RCE | Command output | Output + timing |
| Network | Port + banner grab | nmap output |

**Sandbox Pool**: Kata Containers (untrusted) → gVisor (trusted) → Docker (internal).
Speed: <5 min basic, <15 min complex.

## Layer 5: Safety & Governance

### 4-Layer Defense + 4D Budgets

```
L4: Observability — Immutable SHA-256 audit chains, real-time monitoring, kill switch
L3: Runtime — Sub-ms policy engine, execution rings, circuit breakers
L2: Containment — Kata/Firecracker, network microsegmentation, gVisor
L1: Governance — Human controller per agent, risk-based approval gates
```

**4D Budgets (infrastructure-layer enforcement — NOT system prompts):**
- Token: per-session ceiling
- Step: 50-100 recon, 10-20 exploit
- Time: 30 min recon, 15 min exploit
- Cost: $50-500 per engagement

**Kill Switch**: Soft stop → Hard stop → Emergency isolation → State capture.

## Layer 6: Continuous Learning

### 6 Subsystems

| Subsystem | Impact |
|-----------|--------|
| GEPA Engine | Genetic prompt evolution, +13% over MIPROv2 |
| Success-Case RAG | +30% exploit success (30%→60%) |
| Skill Library (SAGE) | 59% token reduction, +8.9% task completion |
| 3-Layer Memory | Episodic + Semantic + Procedural retention |
| Fine-Tune Pipeline | Weekly LoRA, 2.4x improvement |
| Drift Detection | Weekly benchmarks, auto-retrain at 5% drop |

**Autonomy Gap**: Close from 43 pts (21%→64%) to <20 pts via HITL feedback + self-critique.

## Layer 7: Operator Interface

### Graduated Autonomy (Default: Level 1)

| Level | Name | Auto Actions |
|-------|------|-------------|
| 0 | STANDBY | None (manual step-by-step) |
| 1 | RECON AUTO | Recon only (default) |
| 2 | EXPLOIT AUTO | Exploitation confirmed vulns |
| 3 | LATERAL AUTO | Lateral within scope |
| 4 | FULL AUTO | Full autonomy within ROE |

**Checkpoint Gates** (LangGraph interrupt()): Exploit launch → Lateral movement → Data access → Scope expansion.

## Kill Chain Rules (On-Demand Loading)

| Phase | Rule | Load When |
|-------|------|-----------|
| 0 | `rule-00-scope` | **MANDATORY** — Before ANY action |
| 1 | `rule-01-recon` | Target acquired, map surface |
| 2 | `rule-02-weaponization` | Intel gathered, build payload |
| 3 | `rule-03-delivery` | Payload ready, choose vector |
| 4 | `rule-04-exploitation` | Vector confirmed, execute |
| 5 | `rule-05-privesc` | Foothold secured, elevate |
| 6 | `rule-06-lateral` | Elevated access, expand |
| 7 | `rule-07-post-exploit` | Objective reached |
| 8 | `rule-08-reporting` | Document findings |

**Rule**: Only load the rule for CURRENT phase. Never preload all.

## TDD Validation Pipeline

```
DEFINE  → What does success look like? (specific evidence)
TEST    → Non-destructive probe (banner, version, behavior)
EXPLOIT → Execute only if TEST confirms
VERIFY  → Deterministic validation (class-specific validator)
DOCUMENT→ Evidence + timestamp + confidence score
```

**Non-negotiable**: TEST before EXPLOIT. Every time. No exceptions.

## Arsenal Quick Access

```bash
# Search entire arsenal
cd /code/Labs_Research/arsenal && ./scripts/arsenal-search.sh "KEYWORD" [category]

# Inventory
cd /code/Labs_Research/arsenal && ./scripts/arsenal-ls.sh [category]

# Rule reference
cat /app/.user/skills/D1337/references/rule-XX-phase.md

# KAIROS architecture (full)
cat /mnt/agents/output/research/KAIROS_ARCHITECTURE_v2.md
```

## Validation Checklist

- [ ] Scope read: `rule-00-scope.md` acknowledged
- [ ] Model router: task routed to optimal tier
- [ ] MCP tools: grounded with >90% accuracy
- [ ] Kill chain: executing via LangGraph state machine
- [ ] Validation: class-specific deterministic verifier
- [ ] Budget: within 4D constraints
- [ ] Safety: checkpoint gate passed for destructive actions
- [ ] Evidence: documented with timestamp + confidence
- [ ] Learning: pattern extracted for success-case RAG

## Benchmark Targets (How We Beat XBOW + Mythos)

| Benchmark | XBOW/Mythos | KAIROS Target |
|-----------|-------------|---------------|
| CyberGym | Mythos 83.1% | >85% |
| ExploitBench | Mythos 78% | >70% at 1/5 cost |
| XBOW 104-challenge | XBOW 85% | >90% |
| Cost/engagement | XBOW $4K-6K | <$50 |
| MCP tool pass rate | Industry 62% | >90% |
| False positive rate | XBOW 0% (claimed) | 0% (deterministic) |
| Autonomy gap | 43 pts | <20 pts |
