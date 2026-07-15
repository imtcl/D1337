# Rule 01: Reconnaissance

**Repos**: fuzzdb, RedTeam-Tools, nuclei-templates, api-tools  
**Agent**: KAIROS Recon

## Pre-Op

```bash
cat /app/.user/skills/D1337/references/rule-00-scope.md  # ACK scope first
```

## Passive (No Target Contact)

```bash
# OSINT
grep -ri "OSINT\|whois\|theHarvester\|maltego" /code/Labs_Research/arsenal/RedTeam-Tools/ -A 3 | head -30

# Subdomain enum
grep -ri "subdomain\|subfinder\|amass\|assetfinder" /code/Labs_Research/arsenal/RedTeam-Tools/ -A 2 | head -20

# Dorking
grep -ri "github.*dork\|google.*dork" /code/Labs_Research/arsenal/ -l | head -10
```

## Active (With Target Contact)

```bash
# Port scan patterns
grep -ri "nmap.*scan\|masscan\|rustscan" /code/Labs_Research/arsenal/RedTeam-Tools/ -A 2 | head -30

# Service enum
grep -ri "banner.*grab\|service.*version\|enumeration" /code/Labs_Research/arsenal/RedTeam-Tools/ -A 2 | head -20

# Tech fingerprint
grep -ri "wappalyzer\|whatweb\|builtwith" /code/Labs_Research/arsenal/ -l | head -10

# Directory discovery
cat /code/Labs_Research/arsenal/fuzzdb/attack-payloads/Discovery/Web-Content/common.txt 2>/dev/null | head -50
```

## API Recon

```bash
grep -ri "swagger\|openapi\|/api/v\|graphql" /code/Labs_Research/arsenal/api-tools/ -A 2 | head -20
grep -ri "api.*fuzz\|endpoint.*discover" /code/Labs_Research/arsenal/api-tools/ -A 3 | head -20
```

## Quick Search

| Goal | Command |
|------|---------|
| Subdomain tools | `grep -ri "subdomain\|subfinder" arsenal/ -l` |
| Port scanning | `grep -ri "nmap\|masscan" arsenal/ -l` |
| OSINT | `grep -ri "osint\|recon" arsenal/ -l` |
| Directory lists | `find arsenal/fuzzdb -name "*.txt" \| head -20` |
| Web fingerprint | `grep -ri "fingerprint\|wappalyzer" arsenal/ -l` |
