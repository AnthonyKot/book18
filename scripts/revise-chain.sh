#!/usr/bin/env bash
# scripts/revise-chain.sh NN NN ... — run revise-codex.sh sequentially for each essay.
cd "$(dirname "$0")/.."
for n in "$@"; do scripts/revise-codex.sh "$n"; done
echo "chain $* done $(date +%H:%M)" >> drafts/revise-chain.log
