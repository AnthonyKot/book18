# Drafting brief — Book 18 essay {{NN}}

You are drafting one essay for *The Second Engine* (`/home/diablo/book18`), a book of
evidence-led option screens for an experienced enterprise developer deciding where to put two
years and EUR 100,000. Work only inside that directory. Read, in order: `CONTEXT.md` (all of it;
your contract is in section 6 under essay {{NN}}), `AGENT.md`, `TEMPLATE.md`, then
`chapters/01-connected-product-operations.html` and `chapters/04-asset-intelligence.html` as
finished examples of tone, HTML skeleton, ledger and reading list. Also read
`checks/claims/01.tsv` and `resources/sources/04/SOURCES.md` as format examples.

## Files you own (create; never touch anything else)

- `chapters/{{FILE}}` — the essay. Copy the exact skeleton of chapter 01: same head, header,
  `p.kicker` ("Essay {{NN}} of 7 · <candidate name>"), argued `h1`, `p.lede`, the sections
  `proposition, changed, sale, economics, scale, competition`, then `div.counter`,
  `section.monday`, `div.verdict-box`, `div.reading`, `nav.chapter-nav`, footer. The economics
  table sits in `div.ledger-wrap > table.ledger`. Use `../static/style.css` and `../static/theme.js`.
  Leave the chapter-nav as `<span></span>` / Contents / `<span></span>`; the coordinator wires it.
- `checks/claims/{{NN}}.tsv` — header `id	claim	source_url	source_locator	status`, tab-separated,
  exactly five columns, ids `{{NN}}-slug`, status `verified` / `inference` / `open`. Ship with
  zero `open`.
- `resources/sources/{{NN}}/SOURCES.md` — numbered index: publisher, title, URL, accessed date,
  what it supports (claim ids).
- `resources/sources/{{NN}}/excerpts/<slug>.txt` — one file per `verified` row: first line the
  URL, second line the fetch date, then the verbatim supporting passage. Name the file in the
  TSV `source_locator` column. A `verified` row without an excerpt is not verified.
- `drafts/{{NN}}.notes.md` — optional working notes.

## What the essay must do

Follow the contract in CONTEXT section 6 exactly, the priority stack in AGENT.md, and the
beats in TEMPLATE.md. 2,400–3,600 visible words. Lede ≤130 words. One exact verdict string
from CONTEXT section 7 inside `div.verdict-box`, followed by the single assumption that would
most change it. A "capable failure" that is not "poor sales". A ninety-day plan with a price,
maximum pre-evidence spend, pass rule and kill rule.

Research live. Laws, deadlines, contract forms, programme status, vendor products and prices
change; use WebSearch/WebFetch and prefer primary sources (EUR-Lex, Commission, ACM, the grid
operators, Rijksoverheid, standards bodies, vendors' own documentation). Distinguish enacted
from proposed, deadlines from expectations, obligation from budget. If a fact the contract
asks for cannot be established from a source, say so in the essay and do not invent it.

Every external factual statement in the HTML carries `<!-- CHECK: id -->`. Every price, margin,
customer count or cost in the economics section is a design hurdle labelled as such, never a
market fact, unless it has its own verified row. Name real competitors from their own pages
and label marketing language as marketing.

Voice: plain, adult, analytical, no cheerleading, no market-size theatre, no fake scenes.
Paragraphs under 150 words, sentences under 40.

## Before you finish

Run `python3 checks/structure.py {{NN}}` from `/home/diablo/book18` until it passes with no
FAIL lines. Then walk AGENT.md's eight-point pre-ship test and fix what fails. Reply in at most
200 words: the checker's line for your essay, the verdict, the count of verified / inference
rows, the excerpt count, and anything the contract asked for that the record could not settle.
