#!/bin/bash
# arsenal-search.sh — Search across the red team arsenal
# Usage: arsenal-search.sh <keyword> [category]
# Categories: payloads, cve, ad, privesc, web, api, redteam

ARSENAL="/code/Labs_Research/arsenal"
KEYWORD="${1:-}"
CATEGORY="${2:-all}"

if [ -z "$KEYWORD" ]; then
    echo "Usage: arsenal-search.sh <keyword> [category]"
    echo "Categories: payloads, cve, ad, privesc, web, api, redteam, all"
    exit 1
fi

[ ! -d "$ARSENAL" ] && echo "[ERROR] Arsenal not found at $ARSENAL" && exit 1

declare -A PATHS=(
    [payloads]="Offensive-Payloads PayloadsAllTheThings fuzzdb webshell"
    [cve]="PoC-in-GitHub cve"
    [ad]="AD-Attack-Defense Active-Directory-Exploitation-Cheat-Sheet"
    [privesc]="awesome-privilege-escalation TOP"
    [web]="fuzzdb webshell nuclei webshell-bypass http-tools"
    [api]="api-tools jwt-tools bypass-tools"
    [redteam]="Red-Teaming-Toolkit RedTeam-Tools"
)

build_paths() {
    local paths=""
    if [ "$CATEGORY" = "all" ]; then
        for p in "${PATHS[@]}"; do
            for sub in $p; do [ -d "$ARSENAL/$sub" ] && paths="$paths $ARSENAL/$sub"; done
        done
    else
        for sub in ${PATHS[$CATEGORY]}; do
            [ -d "$ARSENAL/$sub" ] && paths="$paths $ARSENAL/$sub"
        done
    fi
    echo "$paths"
}

SEARCH_PATHS=$(build_paths)
echo "=== ARSENAL SEARCH: '$KEYWORD' | Category: $CATEGORY ==="

echo "--- Files ---"
find $SEARCH_PATHS -iname "*$KEYWORD*" -type f 2>/dev/null | head -30
echo "($(find $SEARCH_PATHS -iname "*$KEYWORD*" -type f 2>/dev/null | wc -l) files)"

echo "--- Content ---"
grep -ri "$KEYWORD" $SEARCH_PATHS --include="*.md" --include="*.txt" --include="*.py" \
    --include="*.rb" --include="*.go" --include="*.sh" --include="*.ps1" \
    --include="*.yaml" --include="*.yml" --include="*.json" -l 2>/dev/null | head -30
echo "($(grep -ri "$KEYWORD" $SEARCH_PATHS --include="*.md" --include="*.txt" --include="*.py" \
    --include="*.rb" --include="*.go" --include="*.sh" --include="*.ps1" \
    --include="*.yaml" --include="*.yml" --include="*.json" -l 2>/dev/null | wc -l) content matches)"
