**VERDICT: REVISE — the thesis is strong, but the scalability unit, production-payment test, economics bridge, and several receipts are not yet ship-ready.**

# Consolidated review: Chapter 04

## Ranked findings

### 1. High — “Customer twenty” changes meaning halfway through the scalability test

> “Customer twenty is viable only if acquisition is through three to five enabled maintenance partners…”

The paying customer was previously defined as the maintenance company, while the production economics count monitored sites. At “customer twenty,” the text silently starts treating maintenance partners as a channel to end-customer sites. Consequently, it never demonstrates how the twentieth paying maintenance partner is acquired, or whether the intended scalable company actually has only three to five highly concentrated customers.

This contradicts the requirement that “the twentieth buyer” have a repeatable acquisition route.

**Fix:** Define three separate units throughout: paying maintenance partner, end-customer plant, and monitored site. State the expected partner/site ratio, then describe either the twentieth paying partner or explicitly justify why twenty sites across three to five partners is the relevant scalability gate. Add partner-concentration and churn assumptions to the mature case.

### 2. High — The 90-day pass rule can pass without validating recurring production payment

> “Pass: one partner pays for the diagnostic … then signs either the production order or a dated letter authorising it…”

A €7,500 diagnostic validates paid discovery, not the existential assumption stated in the verdict: willingness to pay a recurring wholesale price while providing outcomes and data rights. An unspecified “dated letter” may be non-binding and need not prove that the end customer will fund the production service.

The source index correctly admits that no evidence presently establishes willingness to pay the proposed recurring prices.

**Fix:** Require a signed production order, paid onboarding deposit, and first recurring invoice—or a binding end-customer-backed commitment. Record the partner’s resale price and gross margin so the test validates both sides of the channel.

### 3. Medium — The mature economics contain a mislabeled cash-buffer calculation

> “Keep at least two months of mature payroll and contractor cost—about €70,000 under this model…”

The listed mature payroll and contractor costs are:

- Analyst: €84k
- Delivery engineer: €82k
- Partner success: €60k
- Founder replacement salary: €100k

That is €326k annually, or approximately **€54k for two months**, not €70k. Approximately €70k is defensible only if it includes most hosting, sales, insurance, legal, and security costs as well.

The remaining table arithmetic is correct: €636k revenue less €126k direct costs and €322k operating costs leaves €188k.

**Fix:** Change the description to approximately €54k for payroll and contractor costs, or relabel approximately €70k–€75k as two months of total mature cash operating costs.

### 4. Medium — “Mature” is not connected to the required three-to-five-year path

The model jumps from four sites in year one to twelve sites in an undated “mature test.” It does not show when twelve sites are reached, how many partners supply them, onboarding cadence, churn, or whether retained cash survives the transition.

That is insufficient to establish the required plausible three-to-five-year route to €100k owner compensation.

**Fix:** Add a compact year 1/year 3/year 5 bridge showing partners, sites, active assets, onboarding, recurring revenue, staffing, churn, owner compensation, and retained cash.

### 5. Medium — Three receipt defects remain, although the reviewers identified only one

#### 5a. Senseye marker mismatch — confirmed from the pro review

> “Siemens can pair broad ingestion with an established predictive-maintenance workflow. `<!-- CHECK: 04-senseye-ingestion -->`”

The Siemens page does say the ingested data is used for predictive-maintenance purposes, but the ledger row covers only ingestion routes and formats. It does not receipt the “established … workflow” wording. [Siemens Machine Data](https://developer.siemens.com/senseye/machine/index.html)

**Fix:** Expand the ledger claim to cover the page’s predictive-maintenance statement and define “workflow,” or cite a separate Senseye workflow/work-order claim.

#### 5b. Two broad negative claims have no receipt

> “There is no new law forcing this purchase.”

> “There is no statutory deadline and no public procurement trail here…”

The source set contains only vendor material, so neither the legal negative nor the procurement-search result can be verified from the evidence packet.

**Fix:** Recast the first as “The proposition does not rely on a legal mandate.” Recast the second as “This research found no relevant public procurement evidence,” then record the databases, queries, and search date—or remove it.

#### 5c. The ERIKS receipt is not durable

The cited ERIKS URL now redirects to its general Dutch storefront rather than the supporting page. Search-indexed text supports the historical claim, and a current ERIKS page still describes Smart Asset Management, but the ledger’s live receipt no longer exposes the cited team composition. [Current ERIKS Smart Asset Management material](https://eriks.com/be/nl/oplossingen/engineering-maatwerkoplossingen/tco-total-cost-of-ownership)

**Fix:** Replace it with an accessible official source that supports both the platform and team claims, or narrow the claim and preserve an excerpt voluntarily.

### 6. Low — Four sentences exceed the checklist’s 40-word readability trigger

Both reviewers correctly identified the long sentences at chapter lines 29, 30, 46, and 98. Depending on hyphen-counting, they contain roughly 42–54 words.

This is a readability warning, not a substantive blocker or a formally stated absolute ceiling.

**Fix:** Split the buyer definition, product-surface enumeration, prospect list, and pass condition. The pass sentence especially needs splitting because it contains several logically distinct requirements.

### 7. Low — The footer still says there are five candidates

> “Five candidates. One second engine.”

The book now contains seven essays and the chapter itself says “Essay 4 of 7.”

**Fix:** Change “Five” to “Seven” or use wording that will not become stale.

## Claim-ledger audit

| Claim | Result | Source check |
|---|---|---|
| `04-senseye-ingestion` | **CONFIRMED** for the ingestion paragraph | API/MQTT/email/storage/historian routes, 1 Hz limit, preprocessing and vibration formats are supported. [Siemens](https://developer.siemens.com/senseye/machine/index.html) |
| `04-senseye-work-events` | **CONFIRMED** | Required fields, optional failure mode, and learning from intervention timing are explicit. [Siemens](https://developer.siemens.com/senseye/workorders/structure.html) |
| `04-augury-bundle` | **CONFIRMED** | Sensors, subscription, AI diagnostics, expert validation, workflow integration and 200+ asset types are supported as vendor claims. [Augury](https://www.augury.com/machine-health/) |
| `04-skf-bundle` | **CONFIRMED** | CMMS/EAM interface, collection routes, certified analysts and subscription service are supported. [SKF PDF](https://cdn.skfmediahub.skf.com/api/public/0901d1968043cda1/pdf_preview_medium/0901d1968043cda1_pdf_preview_medium.pdf) |
| `04-maximo-bundle` | **CONFIRMED** | Condition and historical data, failure patterns, maintenance history, workflows and recommended actions are supported. [IBM](https://www.ibm.com/products/maximo/asset-performance-management) |
| `04-spie-offer` | **CONFIRMED** | Maintenance, asset management, maintenance-system implementation and the IFS Ultimo partnership are present. [SPIE](https://www.spie-nl.com/oplossing/maintenance-solutions) |
| `04-eriks-offer` | **UNVERIFIABLE from the cited live page** | The claim appears true from indexed and other official material, but the cited URL now redirects and is not a durable receipt. |
| `04-vibro-offer` | **CONFIRMED** | The enumerated services are explicit. [VIBRO](https://vibro.nl/en/) |
| `04-istec-offer` | **CONFIRMED** | Hardware, certified experts and data-analysis capability are explicit. [Istec](https://www.istec.com/) |

## Adversarial reconciliation of the reviewers

| Reviewer assertion | Disposition | Reason |
|---|---|---|
| Missing excerpt files for all nine claims | **REJECTED** | Both reviewers overrode the controlling scope. `CONTEXT.md` and `AGENT.md` explicitly introduce mandatory excerpt files **from essay 6 onward**; this is essay 4. The generic checklist cannot erase that limitation. |
| Stacked CHECK markers are a high-severity violation | **REJECTED** | The rule requires markers immediately after a factual sentence or paragraph, not after each semicolon clause. The paired markers jointly receipt their compound sentences. Splitting them would improve auditability but is not a shipping violation. |
| Four sentences exceed 40 words | **CONFIRMED** | All four trip the checklist’s readability trigger, although “strict ceiling” overstates the governing text. |
| Senseye ingestion row does not receipt “established predictive-maintenance workflow” | **CONFIRMED** | The source contains predictive-maintenance language, but the TSV claim does not; the marker-to-row alignment is incomplete. |
| Buyer and purchase event are named | **CONFIRMED** | Managing/service director and renewal/tender are clearly stated; the chapter honestly labels payment as a hypothesis. |
| Economics are fully internally consistent | **REJECTED** | Core revenue arithmetic is sound, but the €70k “payroll and contractor” buffer is not, and the mature case lacks a three-to-five-year bridge. |
| Scalability test passes | **REJECTED** | The first/fifth/twentieth delivery description is useful, but “customer” switches from maintenance partner to end site and never proves acquisition of the twentieth paying buyer. |
| Incumbents and margin capture are adequately confronted | **CONFIRMED** | Vendor surfaces are represented as vendor claims, substitutes are named, and partner capture is central rather than incidental. |
| Capable failure is credible | **CONFIRMED** | It assumes competent execution and still fails through channel power, data restrictions and weak learning—not generic poor sales. |
| Dutch-language and capital constraints are respected | **CONFIRMED** | The partner owns Dutch field interaction; specialist help and the €20k pre-evidence cap fit the reader’s constraints. |
| `TEST THROUGH A PARTNER` is the earned verdict | **CONFIRMED** | The label is correct given absent payment evidence and channel dependence. The production pass condition beneath it still needs strengthening. |
| Blanket “never false / all vendor receipts accurate” pass | **UNVERIFIABLE** | The checked vendor claims are substantially accurate, but the law/procurement negatives are unreceipted and the ERIKS source is no longer directly accessible. |

## Three fixes that matter most

1. Separate paying partners, end customers, and sites; rebuild the scalability and concentration case around those units.
2. Make the 90-day pass require binding, paid production evidence and explicit partner resale economics.
3. Repair the economics/receipt layer: correct the cash-buffer label, add the three-to-five-year ramp, receipt the negative claims, and replace the ERIKS link.
