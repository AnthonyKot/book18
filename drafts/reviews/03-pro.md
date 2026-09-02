Here is the review of Essay 3 against the book's rules, ranked by severity.

### Severity 1: Factual Falsehood (Rule 1)
* **Rule:** Never false. Check dates against the cited primary sources.
* **Quote:** "From 20 January 2027 the EU Machinery Regulation applies, and a party making a substantial modification can be treated as the manufacturer with conformity obligations for the affected machinery. `<!-- CHECK: 03-machinery-date -->`"
* **What the source supports:** The cited primary source (`https://eur-lex.europa.eu/eli/reg/2023/1230/en`, Article 54) explicitly states: *"It shall apply from 14 January 2027."*
* **Concrete fix:** Change "20 January 2027" to "14 January 2027" in the essay text and update the corresponding claim `03-machinery-date` in `checks/claims/03.tsv` to match.

### Severity 1: Constraint Violation (Rule 7)
* **Rule:** Reader constraints (A2 Dutch, no founder field work in Dutch) respected. 
* **Quote:** "The partner owns the Dutch introduction and safety conversation; the founder can conduct the technical workshop in English and build B1/B2 Dutch for commissioning."
* **What the source supports:** `CONTEXT.md` explicitly states that B1/B2 Dutch is a 1–2 year path, and the founder must not personally execute Dutch-language local field work. The essay expects the founder to "build B1/B2 Dutch" for early commissioning (which happens within the 90-day test window) and execute field work, violating both the timeline and the labor constraints.
* **Concrete fix:** Revise the sentence to make it clear that the partner assumes all Dutch-language operator interactions and field work during commissioning, while the founder works purely in English. (e.g., *"The partner owns the Dutch introduction, safety conversation, and all Dutch-language field work during commissioning; the founder conducts technical workshops and engineering in English."*)

### Severity 2: Missing Receipts (Rule 8)
* **Rule:** Receipts: every verified row has an excerpt that says what the claim says.
* **Quote:** N/A (Missing directory `resources/sources/03/excerpts/`)
* **What the source supports:** Although `AGENT.md` states excerpts are required "From essay 6 onward", the pre-ship test rule 8 applied to this review demands that *every* verified row has an excerpt. Currently, the `source_locator` column in the TSV file points to generic section titles and articles, and no excerpt text files exist.
* **Concrete fix:** Create the directory `resources/sources/03/excerpts/`, save the exact text passages from the URLs for all `verified` claims into text files, and update the `source_locator` column in `checks/claims/03.tsv` to point to these file slugs instead of plain text references.

---

### Verdict: REVISE

**The three fixes that matter most:**
1. Fix the EU Machinery Regulation application date to 14 January 2027 to eliminate the factual falsehood.
2. Rewrite the commissioning language requirement to remove the founder's reliance on learning B1/B2 Dutch for immediate fieldwork, shifting that burden fully to the integrator partner.
3. Generate and link the text excerpt files for all `verified` claims in the TSV ledger to comply with the strict receipting rule.
