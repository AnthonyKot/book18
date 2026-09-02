# Claim ledgers

One TSV per essay:

`id<TAB>claim<TAB>source_url<TAB>source_locator<TAB>status`

Allowed statuses: `verified`, `inference`, `open`. Published essays must have no `open` rows.
Every external factual statement in essay HTML should carry `<!-- CHECK: id -->`.

From essay 6 onward, `source_locator` names the saved excerpt file under
`resources/sources/NN/excerpts/` that carries the supporting passage.
