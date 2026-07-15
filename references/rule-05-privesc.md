# Rule 05: Privilege Escalation

**Repos**: awesome-privilege-escalation, TOP, AD-Attack-Defense, Active-Directory-Exploitation-Cheat-Sheet  
**Agent**: KAIROS Elevator

## Linux Privesc

```bash
# All techniques
grep -ri "sudo\|suid\|capability\|kernel.*exploit\|linpeas" /code/Labs_Research/arsenal/awesome-privilege-escalation/ -A 3 | head -30

# SUID
grep -ri "suid\|setuid\|find.*perm" /code/Labs_Research/arsenal/awesome-privilege-escalation/ -A 3 | head -30

# Sudo misconfig
grep -ri "sudo.*NOPASSWD\|sudo.*env_keep\|sudoedit" /code/Labs_Research/arsenal/awesome-privilege-escalation/ -A 3 | head -30

# Capabilities
grep -ri "capability\|getcap\|setcap" /code/Labs_Research/arsenal/awesome-privilege-escalation/ -A 2 | head -20

# Cron
grep -ri "cron\|crontab" /code/Labs_Research/arsenal/awesome-privilege-escalation/ -A 2 | head -20

# PATH hijacking
grep -ri "PATH.*hijack" /code/Labs_Research/arsenal/awesome-privilege-escalation/ -A 2 | head -20
```

## Windows Privesc

```bash
# Token impersonation (Potato family)
grep -ri "rottenpotato\|juicypotato\|sweetpotato\|printspoofer" /code/Labs_Research/arsenal/awesome-privilege-escalation/ -A 3 | head -30

# Service misconfig
grep -ri "unquoted.*path\|service.*permission\|sc config" /code/Labs_Research/arsenal/awesome-privilege-escalation/ -A 2 | head -20

# Registry
grep -ri "AlwaysInstallElevated\|registry.*run" /code/Labs_Research/arsenal/awesome-privilege-escalation/ -A 2 | head -20

# Scheduled tasks
grep -ri "scheduled.*task\|schtasks" /code/Labs_Research/arsenal/awesome-privilege-escalation/ -A 2 | head -20
```

## Active Directory

```bash
# Kerberoasting
grep -ri "GetUserSPNs\|kerberoast\|SPN" /code/Labs_Research/arsenal/AD-Attack-Defense/ -A 3 | head -30

# AS-REP Roasting
grep -ri "AS-REP\|asreproast\|GetNPUsers" /code/Labs_Research/arsenal/AD-Attack-Defense/ -A 3 | head -30

# Pass-the-Hash
grep -ri "pass.*hash\|psexec\|wmiexec\|smbexec" /code/Labs_Research/arsenal/AD-Attack-Defense/ -A 3 | head -30

# DCSync
grep -ri "dcsync\|secretsdump" /code/Labs_Research/arsenal/AD-Attack-Defense/ -A 3 | head -30

# Golden Ticket
grep -ri "golden.*ticket\|ticketer\|krbtgt" /code/Labs_Research/arsenal/Active-Directory-Exploitation-Cheat-Sheet/ -A 3 | head -30
```

## Quick Search

| Goal | Command |
|------|---------|
| Linux privesc | `grep -ri "suid\|sudo\|capability" arsenal/awesome-privilege-escalation/ -A 3` |
| Windows privesc | `grep -ri "potato\|unquoted" arsenal/awesome-privilege-escalation/ -A 3` |
| Kerberoasting | `grep -ri "GetUserSPNs\|kerberoast" arsenal/AD-Attack-Defense/ -A 3` |
| DCSync | `grep -ri "dcsync\|secretsdump" arsenal/AD-Attack-Defense/ -A 3` |
| Golden Ticket | `grep -ri "golden.*ticket\|ticketer" arsenal/AD-Exploitation-Cheat-Sheet/ -A 3` |
