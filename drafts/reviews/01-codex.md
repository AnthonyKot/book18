**REVISE — the legal claims are substantially sound, but the verdict, receipt placement, commercial ownership, and economics need correction before shipping.**

# Consolidated review

The automated structure check passes: 2,891 words, 17 claim markers, 15 unique ledger entries, and no open claims. That check does not validate source semantics, sentence length, or commercial logic.

## Reviewer findings adjudicated

| Rank | Reviewer finding | Decision | Verification |
|---|---|---|---|
| 1 | Pro: `TEST NOW` contradicts the required bilingual partner | **CONFIRMED** | The chapter says the operating hypothesis “requires…a bilingual partner,” while `CONTEXT.md` defines `TEST THROUGH A PARTNER` for an opportunity plausible only with a channel or domain partner. Either change the verdict or rewrite the partner as genuinely optional. [Chapter](/home/diablo/book18/chapters/01-connected-product-operations.html:49), [verdict definitions](/home/diablo/book18/CONTEXT.md:161). |
| 2 | Pro: `01-onekey` and `01-data-dates` markers are misplaced | **CONFIRMED** | `01-onekey` follows the Cybellum sentence, and `01-data-dates` follows the trade-secret sentence. The underlying claims are true, but `AGENT.md` requires the marker immediately after the factual sentence it supports. Data Act Article 50 supports the dates; Articles 4–5 support the trade-secret language. [Chapter](/home/diablo/book18/chapters/01-connected-product-operations.html:41), [ledger](/home/diablo/book18/checks/claims/01.tsv:7), [Data Act](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32023R2854). |
| 3 | Flash 1.1 / Pro 3.1: 49-word prospect sentence | **CONFIRMED** | It violates the drafting brief’s under-40-word rule and is difficult to scan. Flash incorrectly attributes the limit to `TEMPLATE.md`; the actual hard limit is in `essay-brief.md`. [Chapter](/home/diablo/book18/chapters/01-connected-product-operations.html:48), [brief](/home/diablo/book18/scripts/prompts/essay-brief.md:48). |
| 4 | Flash 1.2 / Pro 3.2: long Article 3 sentence | **CONFIRMED** | The legal substance is supported by Data Act Article 3, but the design obligation and pre-contract disclosure should be separate sentences. Exact word counts vary depending on treatment of hyphenated words; the readability problem does not. |
| 5 | Flash 1.3 / Pro 3.3: long state-change sentence | **CONFIRMED** | This is an analytical synthesis, not a source error, but the semicolon chain should be split. |
| 6 | Flash: footer says “Five candidates” | **CONFIRMED** | The book now contains seven essays. [Chapter](/home/diablo/book18/chapters/01-connected-product-operations.html:135), [decision record](/home/diablo/book18/CONTEXT.md:188). |
| 7 | Flash: Year-one €27,000 delivery-cost line is opaque | **CONFIRMED, but its proposed breakdown is rejected** | The table does not disclose labour, tooling, or cloud assumptions. Flash invents a €15,000/€12,000 allocation unsupported by the chapter or sources. Clarify the actual model rather than inserting those fabricated figures. |
| 8 | Pro: Essay 1 is blocked because it lacks excerpt files | **REJECTED** | Both higher-precedence documents expressly introduce mandatory excerpts only from Essay 6 onward. The sentence “A verified row without an excerpt is not verified” belongs to that scoped rule. [CONTEXT.md](/home/diablo/book18/CONTEXT.md:188), [AGENT.md](/home/diablo/book18/AGENT.md:35). This cannot justify `BLOCK`. |
| 9 | Flash: all substantive gates and receipts pass | **REJECTED** | The source facts mostly pass, but receipt placement, one ledger/source mismatch, the unresolved combined buyer, and the partner-dependent verdict are substantive failures—not merely copy edits. |

## Additional findings both reviewers missed

### 1. High — The combined offer lacks one coherent buyer and budget

The chapter names the engineering director or COO as buyer and quality as sponsor. Later it concedes that Data Act interpretation belongs to counsel and commercial/product owners and that the two laws create “two budgets.” The proposed signer, however, is only required to assign engineering and quality time.

That leaves no clear answer to who can purchase the combined operation, authorize commercial data-sharing decisions, and fund counsel. This is central to the essay contract.

**Fix:** Name one accountable buyer with authority across engineering, quality, legal, and product—or sell a CRA operations baseline with a separately priced Data Act module and separate sponsor.

### 2. Medium-high — `01-data-scope` is not fully verified by its ledger source

The ledger row cites only Data Act Article 2, which supports the connected-product definition. It does not support the following sentence: “The Commission explicitly gives robots and industrial machinery as examples.”

Those examples appear on the separate [Commission explanation](https://digital-strategy.ec.europa.eu/en/factpages/data-act-explained), which is indexed in `SOURCES.md` but absent from the ledger row.

**Fix:** Split this into two claim IDs or make the Commission page the source for a dedicated examples row.

### 3. Medium — The partner dependency is absent from the economics and experiment

If a bilingual adviser is necessary, its fee or revenue share belongs in both the €5,000 discovery budget and the mature economics. The 90-day plan instead retains a lawyer and CE adviser only to review boundaries, while the table contains no channel or translation cost.

**Fix:** Define the partner’s role, compensation, customer ownership, and capture risk; then reflect those costs in the model.

### 4. Medium — Mature delivery staffing and costs do not reconcile

The scaling section requires analysts and engineers. The mature model instead says “three delivery engineers” support twenty customers, while combining all hired labour, tools, and cloud into one €300,000 line. The reader cannot tell whether analysts exist, whether three fully loaded hires fit inside the number, or what remains for software and secure infrastructure.

The €90,000 working-capital requirement is likewise not derived from hiring dates, payroll, payment terms, or receivable timing.

**Fix:** Show roles, headcount, loaded annual cost, tools/cloud, utilization, hiring sequence, and the months of cash exposure producing €90,000.

### 5. Medium — Competition coverage addresses CRA, not the combined Data Act operation

ONEKEY, Cybellum, and CRACoWi are fairly described from their own materials, but they address product-security/CRA work. The source pack identifies no named Data Act data-access, contract, data-catalogue, or integration competitor. Counsel and internal product owners are mentioned only as generic substitutes.

**Fix:** Add named competitors for the Data Act half or explicitly conclude that the Data Act component should remain an implementation module rather than a combined recurring product.

### 6. Low — Relative deadline wording will become false almost immediately

“The first operational deadline is immediate” and “the reporting process [is] due in days” are accurate on 2 September 2026, because CRA reporting begins on 11 September 2026. They become stale nine days later. The [CRA](https://eur-lex.europa.eu/eli/reg/2024/2847/oj/eng), [Commission guidance](https://digital-strategy.ec.europa.eu/en/policies/cra-reporting), and [ENISA](https://www.enisa.europa.eu/topics/product-security/single-reporting-platform-srp) support the exact date, not those durable relative descriptions.

**Fix:** Use the date and an explicit “as of September 2026” qualifier, or write wording that remains correct after commencement.

### 7. Low — The initial segment changes within the chapter

The proposition and 90-day plan select connected food/packaging machinery OEMs. “The first sale” expands to warehouse equipment, water-treatment skids, robots, machine vision, pumps, gateways, and controllers.

**Fix:** Keep the first ten prospects inside food/packaging machinery and label the other categories as later expansion options.

## Source spot-check

The principal legal and market-description claims themselves are supported:

- CRA scope, reporting dates, 24/72-hour sequence, 14-day vulnerability report, lifecycle duties, and 2027 application date are accurate.
- Data Act scope, Article 3/4 duties, application dates, and trade-secret controls are accurate.
- The [survey](https://arxiv.org/html/2505.14325v2) supports the sample limitations, reported pain, and budget/role expectations.
- [ONEKEY](https://www.onekey.com/platform-overview), [Cybellum](https://cybellum.com/platform/), [CRACoWi](https://www.onekey.com/cracowi), and [CEN/CENELEC](https://wp2026.cencenelec.eu/sectors-list/digital-society/) support the vendor and standards descriptions, treated appropriately as first-party claims.

## Three fixes that matter most

1. Resolve the combined buyer, partner dependency, partner economics, and resulting verdict.
2. Move the two misplaced markers and repair the incomplete `01-data-scope` ledger receipt.
3. Make delivery staffing, costs, capacity, and working-capital arithmetic auditable.
