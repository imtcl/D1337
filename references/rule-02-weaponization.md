# Rule 02: Weaponization

**Repos**: Offensive-Payloads, PayloadsAllTheThings, PoC-in-GitHub, cve, fuzzdb, webshell  
**Agent**: KAIROS Weaponizer

## CVE & PoC Retrieval

```bash
# Find PoC by CVE
CVE="CVE-2024-XXXX"
find /code/Labs_Research/arsenal/PoC-in-GitHub -iname "*$CVE*" -type f 2>/dev/null | head -20
grep -ri "$CVE" /code/Labs_Research/arsenal/cve/ -l 2>/dev/null | head -10

# Recent critical
grep -ri "CRITICAL\|RCE\|remote.*code" /code/Labs_Research/arsenal/PoC-in-GitHub/CVE-2026/ -l 2>/dev/null | head -20

# By vendor
PRODUCT="apache"
grep -ri "$PRODUCT" /code/Labs_Research/arsenal/PoC-in-GitHub/CVE-2026/ -l 2>/dev/null | head -30
```

## Payload Crafting

```bash
# XSS
grep -ri "<script\|javascript:" /code/Labs_Research/arsenal/Offensive-Payloads/ -l | head -10
grep -ri "polyglot\|jaVasCript" /code/Labs_Research/arsenal/PayloadsAllTheThings/ | head -10

# SQLi
grep -ri "union.*select\|sleep\|benchmark\|pg_sleep" /code/Labs_Research/arsenal/Offensive-Payloads/ | head -20

# RCE
grep -ri "system\|exec\|shell_exec\|passthru" /code/Labs_Research/arsenal/Offensive-Payloads/ | head -20

# SSRF
grep -ri "ssrf\|169.254\|metadata" /code/Labs_Research/arsenal/PayloadsAllTheThings/ -A 3 | head -20

# XXE
grep -ri "xxe\|entity.*file\|DOCTYPE" /code/Labs_Research/arsenal/PayloadsAllTheThings/ -A 3 | head -20
```

## Webshell Selection

```bash
# Available shells
find /code/Labs_Research/arsenal/webshell -type f | grep -i php | head -20

# Minimal PHP shells
grep -rl "system\|exec\|passthru\|shell_exec" /code/Labs_Research/arsenal/webshell/ | head -10

# WAF evasion
grep -ri "bypass\|evasion\|base64\|hex\|chunked" /code/Labs_Research/arsenal/webshell-bypass/ -A 3 | head -30
```

## Fuzzing Wordlists

```bash
ls /code/Labs_Research/arsenal/fuzzdb/attack-payloads/ 2>/dev/null
grep -ri "\\.bak\|\\.zip\|\\.sql\|\\.tar\.gz\|\\.old" /code/Labs_Research/arsenal/fuzzdb/ | head -20
grep -ri "\\.\\./etc/passwd\|file://\|php://filter" /code/Labs_Research/arsenal/PayloadsAllTheThings/ | head -20
```

## Quick Search

| Goal | Command |
|------|---------|
| CVE PoC | `find arsenal/PoC-in-GitHub -iname "*CVE*"` |
| XSS payloads | `grep -ri "<script" arsenal/Offensive-Payloads/ -l` |
| SQLi payloads | `grep -ri "union.*select" arsenal/PayloadsAllTheThings/ -l` |
| Webshells | `find arsenal/webshell -type f \| head -20` |
| WAF bypass | `grep -ri "bypass" arsenal/webshell-bypass/ -A 3` |
