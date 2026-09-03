# Hardening brief — essay {{NN}} of *The Second Engine* (repo ~/book18)

Goal: make every claim in essay {{NN}} auditable the way book17's are: a saved excerpt on disk,
a dated verifier stamp, and prose that says no more than the excerpt supports.

Read first: `CONTEXT.md` §5 (evidence and honesty rules) and §6 row {{N}} (the essay's contract),
`checks/claims/README.md`, `checks/claims/{{NN}}.tsv`, `resources/sources/{{NN}}/SOURCES.md`, and the
essay `chapters/{{NN}}-*.html` in full.

For every row in `checks/claims/{{NN}}.tsv`:
1. Fetch the `source_url` (you have network access). Save the passage(s) that support the claim,
   verbatim, as `resources/sources/{{NN}}/excerpts/<id>.txt` with a header: URL, publisher, fetch
   date 2026-09-03, page/section. Government, EU law, standards and regulator pages: excerpt
   freely; press and company pages: only the sentences relied on. If the page is a PDF, extract
   the text. If the URL no longer resolves, try an archived copy (arquivo.pt or web.archive.org)
   and record which; if none, mark the row `open`.
2. Read the excerpt against the claim as worded in the row AND as worded in the essay prose at
   its `<!-- CHECK: {{NN}}-… -->` marker. If both are supported: status `checked-by:codex:2026-09-03`,
   and set `source_locator` to `excerpts/<id>.txt` plus the page/section. If the prose says more
   than the excerpt: weaken the prose to what the excerpt supports (edit the essay), then stamp.
   `inference` rows keep `inference` but must have an excerpt for the fact the inference rests on.
   If the source contradicts the claim: fix the prose and the row, and say so in the applied log.
3. Essay {{NN}} only: also audit the prose for external facts with no marker (numbers, dates, laws,
   named companies or products, prices). Add a marker and a row for each, then treat it as above.
   Essay 04 is known to be thin (9 rows in ~3,400 words); expect to add many.

Update `resources/sources/{{NN}}/SOURCES.md` so every excerpt file is listed with URL, publisher,
fetch date and the claims it serves. Write `drafts/reviews/{{NN}}-hardened.md`: one line per row
(stamped / inference / open, with reason), prose changes made, rows added.

Rules: never add a fact from memory; verdict words and the economics must not change unless a
source contradicts a number, in which case fix it and flag it at the top of the log. Do not edit
other essays, `index.html` or `CONTEXT.md`.

Save as you go (hard rule): after every 5–8 rows, `git add` only your files (the essay, its TSV,
`resources/sources/{{NN}}/`, `drafts/reviews/{{NN}}-hardened.md`) and
`git commit -m "WIP essay {{N}} hardening: <what landed>"`. No push.

Finish: `./verify.sh {{NN}} --strict` must PASS (0 unstamped, 0 open, 0 mismatches). Final report
≤200 words: rows stamped / inference / open (with reasons), rows added, prose weakened, any
number corrected, the verify line, last commit hash.
