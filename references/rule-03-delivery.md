# Rule 03: Delivery

**Repos**: Red-Teaming-Toolkit, RedTeam-Tools, webshell-bypass, fuzzdb  
**Agent**: KAIROS Deliverer

## Web Delivery

```bash
# Upload bypass
grep -ri "upload.*bypass\|content-type.*spoof\|double.*extension" /code/Labs_Research/arsenal/webshell-bypass/ -A 3 | head -30

# MIME manipulation
grep -ri "mime.*type\|content-type.*manipul" /code/Labs_Research/arsenal/Red-Teaming-Toolkit/ -A 2 | head -20

# Path traversal upload
grep -ri "path.*travers\|%00\|..%2f" /code/Labs_Research/arsenal/webshell-bypass/ -A 2 | head -20
```

## HTTP Manipulation

```bash
# Request smuggling
grep -ri "smuggl\|content-length.*transfer-encoding\|TE.*CL\|CL.*TE" /code/Labs_Research/arsenal/http-tools/ -A 5 | head -40

# Cache poisoning
grep -ri "cache.*poison\|X-Cache" /code/Labs_Research/arsenal/http-tools/ -A 3 | head -20

# Host header injection
grep -ri "host.*header\|X-Forwarded-Host" /code/Labs_Research/arsenal/http-tools/ -A 2 | head -20
```

## Quick Search

| Goal | Command |
|------|---------|
| Upload bypass | `grep -ri "upload.*bypass" arsenal/webshell-bypass/ -A 3` |
| HTTP smuggling | `grep -ri "smuggl" arsenal/http-tools/ -A 5` |
| Cache poisoning | `grep -ri "cache.*poison" arsenal/http-tools/ -A 3` |
