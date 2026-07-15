#!/bin/bash
# arsenal-ls.sh — List arsenal inventory with stats
# Usage: arsenal-ls.sh [category]

ARSENAL="/code/Labs_Research/arsenal"
CATEGORY="${1:-all}"

[ ! -d "$ARSENAL" ] && echo "[ERROR] Arsenal not found at $ARSENAL" && exit 1

echo "=== RED TEAM ARSENAL INVENTORY ==="
echo "Path: $ARSENAL"
echo "Total Size: $(du -sh "$ARSENAL" 2>/dev/null | cut -f1)"
echo "Total Files: $(find "$ARSENAL" -type f 2>/dev/null | wc -l)"
echo ""

echo "--- Repositories ---"
for dir in "$ARSENAL"/*/; do
    [ -d "$dir" ] || continue
    name=$(basename "$dir")
    size=$(du -sh "$dir" 2>/dev/null | cut -f1)
    files=$(find "$dir" -type f 2>/dev/null | wc -l)
    printf "  %-50s %8s %8s files\n" "$name/" "$size" "$files"
done
