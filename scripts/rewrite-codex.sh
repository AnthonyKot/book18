#!/usr/bin/env bash
# scripts/rewrite-codex.sh NN — sol-only rewrite pass from drafts/NN.rewrite.brief.md; retries on capacity.
set -uo pipefail
cd "$(dirname "$0")/.."
n="${1:?essay number}"; brief="drafts/$n.rewrite.brief.md"; log="drafts/$n.codex-rewrite.log"
for attempt in 1 2 3 4 5 6; do
  echo "=== rewrite attempt $attempt gpt-5.6-sol $(date +%H:%M)" >> "$log"
  codex exec --skip-git-repo-check -m gpt-5.6-sol -s danger-full-access -C "$(pwd)" "$(cat "$brief")" < /dev/null >> "$log" 2>&1
  grep -q "at capacity" <(tail -n 5 "$log") || break
  sleep 180
done
[ -f "drafts/$n.terra-draft" ] && echo "rewrite $n ended with terra marker still present" >> "$log" || echo "rewrite $n complete" >> "$log"
