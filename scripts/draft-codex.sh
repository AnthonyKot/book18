#!/usr/bin/env bash
# scripts/draft-codex.sh NN — hand essay NN to codex from drafts/NN.brief.md.
# Retries across models when the model reports "at capacity"; stops once the chapter exists.
# A chapter produced by gpt-5.6-terra is a DRAFT ONLY: it is recorded in drafts/NN.terra-draft
# and must be rewritten by gpt-5.6-sol (or the coordinating Claude session) before review or publication.
set -uo pipefail
cd "$(dirname "$0")/.."
n="${1:?essay number, e.g. 06}"
brief="drafts/$n.brief.md"; [ -f "$brief" ] || { echo "no $brief"; exit 1; }
log="drafts/$n.codex-draft.log"
for attempt in 1 2 3 4; do
  for m in gpt-5.6-sol gpt-5.6-terra; do
    if ls chapters/$n-*.html >/dev/null 2>&1; then echo "chapter $n exists; done" >> "$log"; exit 0; fi
    echo "=== attempt $attempt model $m $(date +%H:%M)" >> "$log"
    codex exec --skip-git-repo-check -m "$m" -s danger-full-access -C "$(pwd)" "$(cat "$brief")" < /dev/null >> "$log" 2>&1
    if ! grep -q "at capacity" <(tail -n 5 "$log"); then
      [ "$m" = gpt-5.6-terra ] && ls chapters/$n-*.html >/dev/null 2>&1 && echo "terra draft $(date +%F) — rewrite with sol before review" > "drafts/$n.terra-draft"
      break 2
    fi
    sleep 120
  done
done
ls chapters/$n-*.html >/dev/null 2>&1 && echo "chapter $n exists; done" >> "$log" || echo "no chapter $n after retries" >> "$log"
