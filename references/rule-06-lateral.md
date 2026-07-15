# Rule 06: Lateral Movement

**Repos**: AD-Attack-Defense, Red-Teaming-Toolkit, RedTeam-Tools  
**Agent**: KAIROS Mover

## Windows Lateral

```bash
# Pass-the-Hash
grep -ri "psexec\|wmiexec\|smbexec\|mmcexec" /code/Labs_Research/arsenal/AD-Attack-Defense/ -A 3 | head -30

# Pass-the-Ticket
grep -ri "pass.*ticket\|kirbi\|ccache" /code/Labs_Research/arsenal/AD-Attack-Defense/ -A 3 | head -20

# DCOM hijacking
grep -ri "dcom\|MMC20" /code/Labs_Research/arsenal/AD-Attack-Defense/ -A 3 | head -20

# WMI events
grep -ri "wmi.*event\|__event" /code/Labs_Research/arsenal/AD-Attack-Defense/ -A 3 | head -20
```

## Linux Lateral

```bash
# SSH key pivoting
grep -ri "ssh.*key\|authorized_keys\|id_rsa" /code/Labs_Research/arsenal/RedTeam-Tools/ -A 2 | head -20

# Network pivoting
grep -ri "proxychain\|chisel\|ssh.*tunnel\|portfwd" /code/Labs_Research/arsenal/RedTeam-Tools/ -A 2 | head -20
```

## C2 Communication

```bash
# C2 tools
grep -ri "c2\|command.*control\|beacon\|implant\|listener" /code/Labs_Research/arsenal/Red-Teaming-Toolkit/ -A 3 | head -30

# DNS tunneling
grep -ri "dns.*tunnel\|dnscat\|iodine" /code/Labs_Research/arsenal/Red-Teaming-Toolkit/ -A 2 | head -20

# HTTPS covert channel
grep -ri "https.*covert\|domain.*front" /code/Labs_Research/arsenal/Red-Teaming-Toolkit/ -A 2 | head -20
```

## Quick Search

| Goal | Command |
|------|---------|
| Pass-the-Hash | `grep -ri "psexec\|wmiexec" arsenal/AD-Attack-Defense/ -A 3` |
| Pass-the-Ticket | `grep -ri "pass.*ticket\|kirbi" arsenal/AD-Attack-Defense/ -A 3` |
| DCOM | `grep -ri "dcom\|MMC20" arsenal/AD-Attack-Defense/ -A 3` |
| C2 tools | `grep -ri "c2\|beacon\|implant" arsenal/Red-Teaming-Toolkit/ -A 3` |
| Pivoting | `grep -ri "proxychain\|chisel\|tunnel" arsenal/RedTeam-Tools/ -A 2` |
