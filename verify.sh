#!/usr/bin/env bash
# Book 18 — standing verification. ./verify.sh [NN] [--strict]
#   checks/structure.py   essay beats, word bounds, readability            (as before)
#   checks/claims.py      markers ↔ rows; statuses stamped; no open rows   GATING with --strict, advisory otherwise
set -u
cd "$(dirname "$0")"
fail=0; FILTER=""; STRICT=""
for a in "$@"; do case "$a" in --strict) STRICT=1;; *) FILTER="$a";; esac; done
python3 checks/structure.py $FILTER || fail=1
echo "== claims (markers vs register; stamps; open rows) =="
if [ -n "$STRICT" ]; then python3 checks/claims.py $FILTER || fail=1; else python3 checks/claims.py --advisory $FILTER; fi
[ $fail = 0 ] && echo "PASS" || { echo "FAIL"; exit 1; }
