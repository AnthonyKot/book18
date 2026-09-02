**Verdict: REVISE — the legal core is sound, but the mature cash model is internally false and the competitive case understates direct overlap with Circularise.**

# Consolidated adversarial review

The statutory claims were checked against the consolidated Batteries Regulation and current Commission material. The 18 February 2027 passport/QR date, second-life responsibility transfer, BMS-access provisions, Article 78 controls, due-diligence separation, registry status, 71-point guidance and indicative implementation schedule are supported by the cited primary sources: [Batteries Regulation](https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX%3A02023R1542-20250731), [DPP Registry](https://single-market-economy.ec.europa.eu/single-market/digital-product-passport/dpp-registry_en), [battery guidance](https://single-market-economy.ec.europa.eu/news/guidance-support-preparations-digital-batteries-passport-2026-08-21_en), and [DPP timeline](https://single-market-economy.ec.europa.eu/single-market/digital-product-passport_en).

## Ranked findings

### 1. High — The “six months” cash reserve is arithmetically impossible

> “A production company should preserve roughly €90,000 for six months of a small team's payroll and specialist commitments.”

The mature model at [line 64](/home/diablo/book18/chapters/05-product-passports.html:64) budgets €330,000 annually for founder and employee labour plus €60,000 for specialist QA. Six months is therefore €195,000 before the €75,000 overhead allocation—or €232,500 including it. Even excluding the founder, six months of employees and specialists is €145,000.

Thus €90,000 covers approximately 2.8 months of labour and specialists, not six. This directly contradicts the reviewer’s claim that working capital is “strictly bounded” within the reader’s €100,000.

Fix: replace the reserve with the correctly calculated amount, then show how advance billing, retained profits, receivables and any credit facility bridge the gap without requiring the reader to inject more than €100,000.

### 2. High — The differentiation under-describes a competitor already selling the proposed “dirty operational layer”

The chapter reduces Circularise to:

> “model- and individual-battery data, QR access and permissions in one platform.”

Circularise currently markets supplier-evidence collection, field-to-owner mapping, automated evidence requests, chain-of-custody records, access governance, lifecycle maintenance, and ERP/PLM integration—the chapter’s proposed differentiation almost feature for feature. See [Circularise’s product description](https://www.circularise.com/battery-passport).

Saying Circularise “can add onboarding services” understates the present overlap. The business must beat an incumbent already describing the passport as an ongoing evidence workflow, not merely a host that might later move upstream.

Fix: compare the offer against Circularise field by field. Explain why provider neutrality, second-life lineage, or accountable managed exceptions remain defensible—and add a kill rule if buyers accept Circularise’s native workflow instead.

### 3. High — Delivery capacity is not actually modelled

The mature case assumes twelve managed customers, four onboardings and 4,000 annual events with two engineers and one operations lead. The chapter shows that two hours per event would consume roughly four working years, but never states the assumed automation rate, exception rate, minutes per ordinary event, onboarding hours or customer-support load.

Consequently, the €183,000 result is correct bookkeeping applied to an unproven labour-capacity assumption.

Fix: add a workload bridge—for example, automated-event percentage, exception minutes, onboarding hours and annual compliance-review hours—and demonstrate that the stated team can deliver it with contingency.

### 4. Medium — One verified competitor claim is not supported, while other external claims lack immediate receipts

The ledger says Minespider markets an “open API,” but its cited homepage currently says only “advanced API connectivity”; neither the homepage nor battery-passport page establishes that the API is open. The row at [05.tsv:16](/home/diablo/book18/checks/claims/05.tsv:16) should not remain `verified` as written. See [Minespider’s current product page](https://www.minespider.com/).

Other factual repetitions also lack immediate markers:

- The four-incumbent claim in the lede at [line 25](/home/diablo/book18/chapters/05-product-passports.html:25).
- “Only the responsible economic operator carries the legal duty” at [line 82](/home/diablo/book18/chapters/05-product-passports.html:82).
- The Siemens, Circularise, Minespider and ERP capability assertions at [line 83](/home/diablo/book18/chapters/05-product-passports.html:83).

Fix: change “open API” to “API connectivity” unless documentation proves openness, and put CHECK markers immediately after every external factual occurrence.

### 5. Medium — A partner-dependent verdict lacks a named domain partner

The chapter names a category—“a battery conformity/safety consultancy”—and several software platforms, but no actual battery-regulation specialist, conformity body or laboratory through which the test will run. The 90-day plan likewise says to retain an unspecified lawyer or specialist.

That weakens `TEST THROUGH A PARTNER`: the partner is structurally necessary for interpretation, local conversations, liability boundaries and acquisition, yet its availability and economics remain hypothetical.

Fix: name at least one real candidate domain partner, record its commercial role and conflict risk, and require a partner-supported prospect introduction in the pass criteria.

### 6. Medium — The footer contradicts the book and chapter

The kicker correctly says “Essay 5 of 7,” while the footer says:

> “Five candidates. One second engine.”

See [line 130](/home/diablo/book18/chapters/05-product-passports.html:130). `CONTEXT.md` now defines seven essays.

Fix: update the footer to seven candidates or use wording that does not encode the count.

### 7. Low — The long sentences are real, but not a “strict 40-word-limit” violation

The reviewers correctly found five sentences over 40 words and a dense 132-word paragraph. The checklist says to inspect sentences over 40 words; it does not establish a strict ceiling or make each one a shipping failure.

The Article 13 sentence should be split. The operational lists at lines 30, 50, 52 and 103 can be divided into shorter prose without turning the essay into a field of bullet lists.

## Reviewer finding dispositions

### `05-flash.md`

| Reviewer assertion | Disposition | Reason |
|---|---|---|
| 1. Never false — PASS | **REJECTED** | Legal dates are correct, but “open API,” the stale five-candidate footer and unreceipted factual repetitions prevent a clean pass. |
| 2. Buyer and event — PASS | **CONFIRMED** | Buyer roles and the dated batch event are explicit; the chapter honestly labels willingness to pay as unproven. |
| 3. Economics — PASS | **REJECTED** | Revenue and profit arithmetic works, but the €90,000/six-month reserve claim does not. Delivery capacity is also missing. |
| 4. Scalability — PASS | **CONFIRMED** | Customers one, five and twenty, recurring state changes, delegation and the accumulating mapping asset are concretely described. |
| 5. Incumbents and capture — PASS | **REJECTED** | Capture is discussed, but Circularise’s existing evidence-operation surface is materially understated. Minespider’s “open API” is unsupported. |
| 6. Capable failure — PASS | **CONFIRMED** | Standardisation eliminating the profitable middle is credible and does not depend on poor execution. |
| 7. Language and constraints — PASS | **REJECTED** | The Dutch-language mitigation is adequate, but the reviewer’s claim that capital is strictly bounded relies on the false €90,000 reserve calculation. |
| 8. Receipts — FAIL for stacked markers and absent excerpts | **REJECTED** | Markers may follow a complete factual sentence; the two markers each support one clause. Excerpts are explicitly required only from essay 6 onward in `CONTEXT.md` and `AGENT.md`. Real receipt defects are listed above. |
| 9. Verdict — PASS | **CONFIRMED** | A bounded partner-led test is defensible, although an actual domain partner still needs naming. |
| 10. Readability — FAIL | **REJECTED as a rule failure** | The counts are correct, but 40 words is a review trigger, not a strict ceiling. |
| Detailed F1: stacked markers | **REJECTED** | Both markers follow the sentence they support; moving one to mid-sentence is optional clarity, not compliance repair. |
| Detailed F2: missing excerpts | **REJECTED** | The excerpt requirement begins with essay 6. |
| Detailed F3: five long sentences | **CONFIRMED** | The sentences exist and merit editing; the stated “strict ceiling” does not. |
| Detailed F4: dense paragraph | **CONFIRMED** | It combines several statutory mechanisms and would read better split. |
| Overall `REVISE` | **CONFIRMED** | Correct outcome, but the material reasons are economics, competition and receipts—not missing excerpts or stacked markers. |

### `05-pro.md`

| Reviewer assertion | Disposition | Reason |
|---|---|---|
| Economics are sound and internally consistent | **REJECTED** | The working-capital claim is off by at least €55,000 and as much as €142,500. |
| Capable failure is sharp and non-straw-man | **CONFIRMED** | It describes capable execution losing to successful standardisation. |
| Law, guidance and pending rules are separated correctly | **CONFIRMED** | Primary sources support the chapter’s treatment of enacted duties versus indicative implementation dates. |
| F1: five sentences violate a strict 40-word limit | **REJECTED as stated** | The sentence counts are useful editorial flags, but no strict limit exists. |
| F2: missing excerpt files | **REJECTED** | Both precedence documents restrict that requirement to essays 6 onward. |
| Overall `REVISE` | **CONFIRMED** | Correct verdict for different, more substantive reasons. |

## Three fixes that matter most

1. Correct and fully finance the mature working-capital model.
2. Rebuild the competitive comparison around Circularise’s existing evidence-workflow capabilities.
3. Repair the unsupported “open API” claim and add immediate receipts to all repeated external assertions.
