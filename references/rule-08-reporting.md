# Rule 08: Reporting

**Agent**: KAIROS Scribe

## Evidence Template

```
## Finding: [VULN-XXX] [Title]

Severity: Critical / High / Medium / Low
CVSS: X.X
Affected: IP / hostname / URL
CWE: CWE-XXX / CVE-XXXX-XXXXX

### Evidence
- Command: `exact command`
- Output: `exact output`
- Timestamp: YYYY-MM-DD HH:MM:SS

### Proof of Concept
[step-by-step reproduction]

### Impact
[business impact]

### Remediation
[specific fix]

### References
- [URL]
```

## Severity Scale

| Severity | CVSS | Description |
|----------|------|-------------|
| Critical | 9.0-10.0 | RCE, full system compromise |
| High | 7.0-8.9 | Data exposure, privilege escalation |
| Medium | 4.0-6.9 | Limited impact, conditional |
| Low | 0.1-3.9 | Informational |

## Executive Summary

```markdown
# Penetration Test Report

## Risk Score: X/100
## Key Findings
| # | Finding | Severity | Status |
|---|---------|----------|--------|
| 1 | [Title] | Critical | Open |
```
