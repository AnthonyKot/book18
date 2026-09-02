**Verdict: REVISE — the sourced legal and market claims are mostly sound, but the chapter’s economic model does not yet satisfy the book’s working-capital, capacity, and cost-separation requirements.**

## Ranked consolidated findings

### 1. High — The mature economics are arithmetically correct but not genuinely bottom-up  
**MISSED BY BOTH REVIEWERS**

> “Delivery labour, specialist review, tools … 400”  
> “The direct-cost line allows four loaded delivery roles plus specialist review and tooling.”  
> “The mature operation can need more than €100,000 of payroll and tax liquidity.”

The additions and percentages are correct: mature revenue is €915.2k, gross margin €515.2k, and surplus after founder replacement €255.2k. But the critical €400k delivery-cost line combines staff, specialist review, and tools without showing salary assumptions, hours per baseline, hours per recurring customer, utilization, or whether four roles can deliver 32 baselines plus 24 recurring accounts.

Working capital is discussed but not included in the model or reconciled with the reader’s €100k capital ceiling. Capex is not identified at all. This fails the explicit requirement that working capital and capital expenditure be separated.

The Flash review’s statement that the model “accounts for a ~€100k payroll/tax liquidity buffer” is therefore **REJECTED**: the risk is mentioned, not accounted for.

**Fix:** Add unit-level delivery hours and costs, loaded-role assumptions, utilization and specialist/tool costs. Add a monthly ramp cash bridge showing receivables, payroll, VAT/tax timing, maximum cash draw, capex, and whether deposits keep required capital below €100k.

### 2. Medium — The CRA roles marker receipts an unsupported legal inference  
**CONFIRMED from Flash; missed by Pro**

> “Importers or distributors become manufacturers … A subcontract does not by itself turn the back office into the statutory manufacturer, and it does not remove the manufacturer’s obligations. `<!-- CHECK: 02-cra-roles -->`”

CRA Articles 21–22 support the first sentence: specified importers, distributors, and other substantial modifiers acquire manufacturer obligations. They do not expressly state the chapter’s conclusion about an ordinary product-security subcontract. That conclusion may be a reasonable inference from the statutory definitions, but the cited ledger row does not verify it. [The regulation’s Articles 21–22 support only the economic-operator rules stated in the ledger.](https://eur-lex.europa.eu/eli/reg/2024/2847/oj/eng)

**Fix:** Move the marker immediately after “affected part or whole.” Label the subcontract sentence as an inference requiring counsel, or add a separate claim supported by the relevant definitions and legal analysis.

### 3. Medium — Direct service incumbents are named only as categories  
**MISSED BY BOTH REVIEWERS**

> “Large test and assurance firms, specialist security consultancies, embedded suppliers and internal product-security hires are substitutes.”

Cybellum and ONEKEY are properly sourced as platform competitors: their pages support SBOM, vulnerability, compliance, incident-response, monitoring, consulting, and partner capabilities. [Cybellum](https://cybellum.com/platform/) and [ONEKEY](https://www.onekey.com/platform-overview) therefore substantiate that part of the competitive case.

But the more direct alternatives—test and assurance firms, product-security consultancies, embedded suppliers, and known pentesters—remain anonymous and unreceipted. This is thinner than the book’s requirement to confront entrenched vendors and consultancies fairly from their own material. Hard2bit is useful adjacent-channel evidence, not a Benelux product-security incumbent.

**Fix:** Name and source at least two or three direct service alternatives available to the target partner. Compare credentials, liability position, delivery scope, channel model, and whether they already offer subcontracted or co-branded CRA work.

### 4. Low — “Proves” overstates the Cybellum–Hitachi evidence  
**MISSED BY BOTH REVIEWERS**

> “The partnership proves that customer-owning consultancies can combine service with a specialist product-security engine.”

The source is a first-party announcement of a joint offering. It establishes that Hitachi and Cybellum announced this combination, not that the model produced deliveries, customer adoption, or sustainable channel economics. The source index itself correctly limits this evidence. [Cybellum’s announcement](https://cybellum.com/blog/hitachi-solutions-and-cybellum-to-provide-plm-security-solutions-in-japan/) describes the planned combined service.

**Fix:** Replace “proves” with “shows that vendors market this combination” or “provides a first-party precedent for an announced joint offering.”

### 5. Low — Three sentences exceed 40 words, and several acronyms remain undefined  
**CONFIRMED from both reviewers, with corrections**

The three flagged sentences contain 44, 44, and 42 words respectively. Pro’s 43-word count for the first sentence is off by one, but the underlying finding is valid.

Both reviewers missed the related jargon problem: CRA, SBOM, PSIRT, and IEC 62443 are not expanded at first use. Listing the work attached to them is not the same as defining them.

**Fix:** Split the three sentences and expand at first use: Cyber Resilience Act, software bill of materials, Product Security Incident Response Team, and the relevant industrial-security development standard.

### 6. Low — The footer contradicts the current seven-essay book  
**MISSED BY BOTH REVIEWERS**

> “Five candidates. One second engine.”

The chapter kicker correctly says “Essay 2 of 7,” and [CONTEXT.md](/home/diablo/book18/CONTEXT.md:166) specifies seven essays.

**Fix:** Change “Five candidates” to “Seven candidates,” or use a number-neutral footer.

## Reviewer findings adjudicated

| Reviewer finding or conclusion | Ruling | Reason |
|---|---|---|
| Missing excerpt files invalidate all 11 verified claims | **REJECTED** | AGENT.md explicitly introduces excerpt files “from essay 6 onward”; CONTEXT.md repeats that scope. Chapter 2 is exempt. The generic checklist does not override that specific rule. |
| “2024 qualitative study” is a false publication date | **REJECTED** | The survey was conducted between June and August 2024; the manuscript was submitted in May 2025. The chapter says “2024 study,” not “published in 2024.” [The paper supports the chapter’s wording.](https://arxiv.org/html/2505.14325v2) Clarifying “survey conducted in 2024 and published in 2025” would remove ambiguity. |
| Three sentences exceed 40 words | **CONFIRMED** | Actual counts are 44, 44, and 42. |
| `02-cra-roles` marker is misplaced | **CONFIRMED** | It follows and appears to receipt a subcontract inference absent from the ledger claim and cited provisions. |
| Buyer and purchase event are explicit; regulation is separated from demand | **CONFIRMED** | The payer, triggering client request, substitute, and absence of payment evidence are all stated plainly. |
| All economic figures are consistent and the economics pass | **REJECTED** | The arithmetic is consistent, but capacity, cost composition, capex, and working-capital funding are not demonstrated. |
| Scalability and accumulating assets are concrete | **CONFIRMED** | First partner, fifth partner, and twentieth end customer have distinct operating states; recurring changes and founder-dependence tests are explicit. |
| Incumbents are treated fully and fairly | **REJECTED** | Platform vendors are treated fairly, but direct service and assurance incumbents are unnamed and unreceipted. |
| Capable failure is non-straw-man | **CONFIRMED** | Good enablement lets partners internalize routine work and capture the relationship and margin. |
| Dutch-language and capital constraints are respected | **CONFIRMED with reservation** | The proposed channel owns Dutch delivery, and early spending is capped at €7.5k. The mature liquidity requirement remains unresolved against the €100k ceiling. |
| All receipts are accurate apart from the claimed survey-date error | **REJECTED** | The survey date is not erroneous; the roles marker is defective, and the Cybellum “proves” conclusion is too strong. |
| Jargon is adequately grounded | **REJECTED** | Several central acronyms are never expanded. |
| `TEST THROUGH A PARTNER` and its kill assumption are earned | **CONFIRMED** | The experiment directly tests payment, access, liability, partner margin, and the risk of internalization. |
| Direct selling is “barred” by language and trust | **UNVERIFIABLE** | The chapter says the channel reduces language dependence; it neither establishes nor claims that direct selling is impossible. |

All eleven ledger claims themselves are supported by the cited law, study, standards programme, or vendor pages. The defects are in how one marker is attached and how one vendor announcement is characterized—not wholesale failure of the ledger.

## Three fixes that matter most

1. Rebuild the economics around unit hours, capacity, cost decomposition, capex, and a cash bridge under the €100k capital limit.
2. Repair the `02-cra-roles` receipt and soften the Cybellum–Hitachi “proves” language.
3. Name and source the direct consultancy/test-and-assurance incumbents the target partners can already hire.
