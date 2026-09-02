# Essay 02 Review: White-label Product Security for Engineering Consultancies

**Chapter File:** [`chapters/02-white-label-product-security.html`](file:///home/diablo/book18/chapters/02-white-label-product-security.html)  
**Ledger File:** [`checks/claims/02.tsv`](file:///home/diablo/book18/checks/claims/02.tsv)  
**Source Index:** [`resources/sources/02/SOURCES.md`](file:///home/diablo/book18/resources/sources/02/SOURCES.md)  

---

## Ranked Findings by Severity

### 1. Medium Severity: Misplaced `CHECK` marker for CRA Economic Operator Roles (Rule 8)
* **Quote:**
  > "Those are manufacturer obligations. Importers or distributors become manufacturers when they place a product on the market under their own name or trademark or substantially modify it; a separate party making a substantial modification and remarketing the product also takes manufacturer obligations for the affected part or whole. A subcontract does not by itself turn the back office into the statutory manufacturer, and it does not remove the manufacturer's obligations. `<!-- CHECK: 02-cra-roles -->`" (Lines 38)
* **What the cited source actually supports:**
  * Primary source: Regulation (EU) 2024/2847, Articles 21–22 (`https://eur-lex.europa.eu/eli/reg/2024/2847/oj/eng`).
  * Ledger claim: `"Importers/distributors selling under their own name or trademark or substantially modifying a product, and other parties substantially modifying and remarketing a product, take manufacturer obligations in the CRA's defined circumstances."`
  * Articles 21 and 22 explicitly set out the obligations of importers and distributors, and when their obligations become those of manufacturers upon substantial modification or trademark rebranding. 
  * The source **does not** discuss subcontracting arrangements for security back offices; that following sentence is legal inference. By placing `<!-- CHECK: 02-cra-roles -->` after the subcontracting inference rather than immediately after the statutory definition of manufacturer roles, the receipt rule ("every CHECK marker's row supports the sentence it follows") is broken.
* **Concrete Fix:**
  Move `<!-- CHECK: 02-cra-roles -->` to immediately follow `...affected part or whole.` so it directly attaches to the statutory claim supported by Articles 21–22.

---

### 2. Medium Severity: Publication Year Discrepancy for Primary Industry Survey (Rules 1 & 8)
* **Quote:**
  > "In a small 2024 qualitative study of industrial-equipment organisations, respondents highlighted secure-development governance, security updates, scarce expertise, vulnerability management and the notification clock; they were less worried by many individual technical controls than by organisational ownership and process. `<!-- CHECK: 02-survey-pain -->`" (Line 39)
* **What the cited source actually supports:**
  * Cited paper: Roosa Risto, Mohit Sethi and Mika Katara, *“Effects of the Cyber Resilience Act (CRA) on Industrial Equipment Manufacturing Companies”*, arXiv:2505.14325 (`https://arxiv.org/abs/2505.14325`).
  * Publication date: May 2025.
  * In both `resources/sources/02/SOURCES.md` (Item 4) and the Reading list (Line 123), the citation is correctly dated **2025**. The body prose incorrectly refers to it as a "2024 qualitative study".
* **Concrete Fix:**
  Update the sentence in Line 39 to state: `"In a small 2025 qualitative study of industrial-equipment organisations..."` or `"In a small qualitative study published in 2025..."`.

---

### 3. Medium Severity: Sentences Exceeding the 40-Word Readability Limit (Rule 10)
* **Passage 1 (44 words — Line 30):**
  > "The back office sells the partner a fixed wholesale delivery unit for one end-customer product family: evidence intake, firmware/SBOM analysis orchestration, threat and vulnerability triage, secure-development evidence mapping, a vulnerability-disclosure workflow, an incident tabletop, and a branded delivery pack in the partner's template."
* **Passage 2 (44 words — Line 38):**
  > "Importers or distributors become manufacturers when they place a product on the market under their own name or trademark or substantially modify it; a separate party making a substantial modification and remarketing the product also takes manufacturer obligations for the affected part or whole."
* **Passage 3 (42 words — Line 40):**
  > "Hard2bit publicly offers white-label, co-branded and referral models in which the partner retains the contract and client relationship while the specialist operates behind it; it says margins are negotiated rather than published and that its certifications do not transfer to the reseller."
* **What the cited source supports / Rule violation:**
  * The Book 18 style standard mandates avoiding sentences over 40 words to preserve concise, analytical clarity.
* **Concrete Fixes:**
  * **Passage 1:** Split the definition of the delivery unit:
    > "The back office sells the partner a fixed wholesale delivery unit for one end-customer product family. This includes evidence intake, firmware and SBOM analysis orchestration, threat triage, secure-development evidence mapping, a vulnerability-disclosure workflow, an incident tabletop, and a branded delivery pack in the partner's template." (39 words)
  * **Passage 2:** Split into two sentences:
    > "Importers or distributors become manufacturers when placing a product on the market under their own trademark or substantially modifying it. A third party making a substantial modification and remarketing the product also assumes manufacturer obligations for the affected parts."
  * **Passage 3:** Split across the semicolon:
    > "Hard2bit publicly offers white-label, co-branded and referral models where the partner retains the client contract while the specialist operates behind it. It states that margins are negotiated and that its certifications do not transfer to the reseller."

---

### 4. Low Severity: Absence of Verbatim Excerpt Files in `resources/sources/02/excerpts/` (Rule 8)
* **Quote:**
  * `checks/claims/02.tsv` (`source_locator` references Article numbers and section line ranges, e.g., `Article 14(1)-(4); Article 71(2)`, `Section 5, lines 75-94`).
* **What the cited source actually supports:**
  * `CONTEXT.md` Section 9 notes that the excerpt directory requirement was formally mandated from Essay 06 onward. However, `AGENT.md` states: *"A verified row without an excerpt is not verified"*, and the review rubric expects verified rows to have backing excerpt text files.
* **Concrete Fix:**
  Add a `resources/sources/02/excerpts/` folder, populate it with verbatim excerpts for each of the 11 claims, and update the `source_locator` column in `checks/claims/02.tsv` to reference the excerpt files.

---

## Detailed Evaluation Against the 10 Rule Areas

### 1. Never False (Dates, Laws, Proposals vs Enacted Law, Prices)
* **CRA Dates:** Article 14 reporting (11 September 2026) and full application (11 December 2027), along with the 24-hour early warning / 72-hour notification windows, are verified against Regulation (EU) 2024/2847 Articles 14 and 71(2).
* **Prices & Hurdles:** Wholesale baseline (€7,000), retail target (€12,000), and recurring operations (€2,400/mo wholesale vs €4,000 retail) are clearly labelled as unit-economic design hurdles and modelling assumptions, never presented as observed market prices.

### 2. Buyer and Purchase Event
* **Target Buyer:** Managing director or practice lead of a 3–25 person Benelux CE/machinery-safety, embedded-software, or industrial-automation consultancy.
* **Purchase Event:** An existing client demanding CRA scope, SBOM, or vulnerability management that the consultancy cannot staff internally without hiring a dedicated specialist.
* **Demand vs Regulation:** The essay explicitly notes that the CRA creates manufacturer obligations, but consultancies will only buy if it protects their margins and client accounts.

### 3. Economics and Arithmetic Consistency
* **Distinction of Capital & Compensation:** The model separates revenue (€113.6k Y1 / €915.2k mature), pass-through costs (€0), gross margin (€85.6k / €515.2k), operating expenses (€18k / €155k), founder labour replacement cost (€85k / €105k), and pre-tax company surplus (€255.2k).
* **Working Capital:** Explicitly accounts for a ~€100k payroll/tax liquidity buffer required to manage 45–60 day partner payment terms.
* **Arithmetic Check:**
  * Y1: $8 \times €7\text{k} + 4 \times 6 \times €2.4\text{k} = €56\text{k} + €57.6\text{k} = €113.6\text{k}$. Gross margin: $113.6 - 28 = €85.6\text{k}$ (75.35% $\approx 75\%$). Operating surplus: $85.6 - 18 - 85 = -€17.4\text{k}$.
  * Mature: $32 \times €7\text{k} + 24 \times €28.8\text{k} = €224\text{k} + €691.2\text{k} = €915.2\text{k}$. Gross margin: $915.2 - 400 = €515.2\text{k}$ (56.29% $\approx 56\%$). Operating surplus: $515.2 - 155 - 105 = €255.2\text{k}$.
  * Recurring revenue share: $691.2 / 915.2 = 75.52\% \approx 76\%$.
  * All figures and conversions are consistent.

### 4. Scalability and Asset Accumulation
* **1st Partner:** Co-delivery; founder is hands-on, developing data-handling protocols, responsibility matrices, evidence schemas, and estimating actual hours.
* **5th Partner:** Enablement kit and portal (scoping calculator, standardized SOW modules, intake flows); 1 delivery lead manages several partners; 2 certified people per partner.
* **20th End Customer:** Analysts execute from playbooks; senior engineers handle exceptions; accumulated assets are mapping patterns across industrial architectures and time/failure benchmarks. Client artifacts remain strictly segregated.

### 5. Incumbents and Margin Capture
* **Incumbents Treated Fairly:** Platforms like Cybellum and ONEKEY are evaluated from their actual product documentation (SBOM, vulnerability tracking, CRA compliance workflows) and partner programs (e.g., Hitachi Solutions partnership).
* **Margin Capture Confronted:** Confronts the reality that consultancies can adopt Cybellum/ONEKEY directly or hire their own junior analysts once workflows become clear.

### 6. Capable Failure Mode
* Non-straw-man failure path: The back office executes flawlessly and trains 5 consultancies. By demystifying the work, the back office eliminates its own value; partners hire internal staff or standardize on vendor tooling, leaving the back office with only irregular, low-margin overflow work.

### 7. Dutch-Language Dependence and Reader Constraints
* Reader constraints (€100k capital, A2 Dutch, Zaandam base) are respected.
* The partner handles Dutch-language client discovery, workshops, and local commercial relationships, while the back office provides English technical delivery. The 90-day discovery budget is capped at €7,500.

### 8. Receipts and Claims
* 11 check markers in prose match 11 entries in `checks/claims/02.tsv`.
* Aside from the misplaced `02-cra-roles` marker and the 2024 vs 2025 survey date discrepancy, citations accurately reflect the underlying primary legislation, vendor pages, and research papers.

### 9. Verdict and Kill Assumption
* **Verdict:** `TEST THROUGH A PARTNER` (Correct; direct selling is barred by language/trust, making channel viability the gating dependency).
* **Kill Assumption:** *"The assumption most able to reverse it is that an enabled partner will keep buying recurring specialist capacity instead of internalising the routine work and retaining the full margin."* (Accurately identifies the central existential vulnerability).

### 10. Readability
* Paragraph lengths are well balanced (all between 40 and 100 words).
* Jargon (SBOM, CRA, PSIRT, IEC 62443) is grounded in specific operational mechanisms.
* 3 sentences exceed 40 words and need minor splitting.

---

## Verdict

### **REVISE**

The chapter is analytically sound, economically coherent, and adheres closely to the book's core thesis. It requires minor text revisions to resolve sentence length limits, fix one check-marker placement, and align a publication date citation.

---

## The Three Fixes That Matter Most

1. **Fix `02-cra-roles` CHECK Marker Placement:** Move `<!-- CHECK: 02-cra-roles -->` up by one sentence to immediately follow `...affected part or whole.` so it directly receipts the statutory definition of manufacturer obligations under CRA Articles 21–22.
2. **Correct Survey Publication Date:** Update "small 2024 qualitative study" to "small 2025 qualitative study" to match arXiv:2505.14325, `SOURCES.md`, and the Reading list.
3. **Split 40+ Word Sentences:** Refactor the three long sentences in Lines 30, 38, and 40 into crisp, two-sentence pairs to satisfy the readability standards.
