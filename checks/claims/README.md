# Claim ledgers

One TSV per essay:

`id<TAB>claim<TAB>source_url<TAB>source_locator<TAB>status`

Allowed statuses: `verified`, `inference`, `open`. Published essays must have no `open` rows.
Every external factual statement in essay HTML should carry `<!-- CHECK: id -->`.

From essay 6 onward, `source_locator` names the saved excerpt file under
`resources/sources/NN/excerpts/` that carries the supporting passage.

**Hardening (2026-09-03):** statuses are now `checked-by:<who>:<YYYY-MM-DD>` (the verifier read the
saved excerpt), `inference` (the author's inference from a cited fact; the excerpt carries the fact),
or `open`. The legacy bare `verified` is reported as UNSTAMPED by `checks/claims.py` and fails
`./verify.sh --strict`. Every stamped or inference row's `source_locator` names the excerpt file
under `resources/sources/NN/excerpts/` plus the page or section.
