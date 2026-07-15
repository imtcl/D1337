# Rule 00: Scope Enforcement

**MANDATORY**: Read before ANY action. No exceptions.

## Authorized Targets

1. **Written authorization required** — No engagement without signed letter
2. **Scope boundary** — Only IPs/domains in the engagement letter
3. **Time windows** — Operate within agreed testing hours
4. **Exclusions honored** — Out-of-scope systems are NO-GO

## Safety Controls

| Control | Implementation |
|---------|---------------|
| Dry-run first | `--safe-only`, `-n`, `--dry-run` before live execution |
| Rate limit | Max 10 req/sec per target |
| Backup check | Confirm backups exist before destructive actions |
| Escalation | Client contact on standby for emergencies |
| Kill switch | Know how to abort all operations immediately |

## Evidence Standard

Every action logged:
```
[TIMESTAMP] [KAIROS] [COMMAND] [TARGET] [RESULT]
```

## Abort Triggers

- Target responds unexpectedly (possible production system)
- Data exfiltration exceeds scope
- Unauthorized systems affected
- Client requests immediate stop

## Quick Verification

```bash
# Verify target is in scope
grep "TARGET_IP" scope.txt
# Check rate limit
timeout 1 curl -s TARGET | wc -c
# Confirm backup exists
ssh admin@TARGET "ls -la /backup/" 2>/dev/null
```
