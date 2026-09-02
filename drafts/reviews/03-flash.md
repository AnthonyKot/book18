# Review: Chapter 03 — *Inspect the Date, Not “Food”* (`chapters/03-machine-vision-food.html`)

An exhaustive audit of Essay 03 against [CONTEXT.md](file:///home/diablo/book18/CONTEXT.md) (Sections 1–7), [AGENT.md](file:///home/diablo/book18/AGENT.md) (priority stack and pre-ship test), and the chapter claim ledger [03.tsv](file:///home/diablo/book18/checks/claims/03.tsv).

---

## 1. Audit Against the 10 Core Criteria

### 1. Never False
* **Legal & Regulatory Status:** All cited legal frameworks are strictly distinguished between enacted law and upcoming application dates:
  * *Regulation (EU) No 1169/2011* (Article 24 & Annex X) and *Directive 2011/91/EU* (Articles 1–4) are correctly cited as existing duties.
  * *Regulation (EU) 2023/1230* (Machinery Regulation) is accurately stated as applying from **20 January 2027** (Article 54), with substantial modification rules (Article 18) correctly scoped.
* **Pricing & Validation Hurdles:** All prices (€3,500 diagnostic, €52,000 cell, €6,000/yr service) are explicitly qualified as required test hurdles and unit-cost assumptions, never passed off as observed market facts.
* **Minor Inconsistency:** The footer (`line 152`) states *"Five candidates"* despite the book's expansion to seven essays.

### 2. Buyer and Purchase Event
* **Payer:** Plant Operations Manager at a private-label cheese slicer or co-packer (with Quality setting acceptance criteria and IT/Engineering signing off on connectivity).
* **Purchase Event:** A documented wrong-date or missing-code escape requiring corrective action (e.g., following retailer rejection), or an upcoming printer/labeler/line replacement creating a funded change window.
* **Demand vs. Regulation:** The NVWA December 2025 pita/wrap date escape warning is explicitly treated as proof of operational consequence, while noting that willingness to pay for machine vision remains unproven until paid diagnostic discovery.

### 3. Economics
* **Labor & Owner Separation:** The financial model explicitly isolates:
  * Wholesale revenue (€35,000 per cell; €2,800 per diagnostic; €4,500/yr per service contract).
  * Direct hardware/assembly/warranty pass-through (€19,500 per cell).
  * Subcontracted delivery & support labor at replacement cost (€6,000 per cell; €1,200 per diagnostic; €1,700/yr per contract).
  * Founder labor at market replacement cost (€65,000 Year 1; €100,000 mature year).
  * Retained earnings before corporate tax (−€65,500 Year 1; €74,000 mature year).
* **Working Capital & Balance Sheet:** Working capital mechanics are concrete (50% deposit on order covers the €18,000 hardware bill). Capital deployment from the €100,000 investor budget is cleanly accounted for (€28,000 demo cell/packs, €32,000 working capital, €15,000 documentation/compliance, €8,000 discovery, €17,000 contingency).
* **Arithmetic:** 100% internally consistent across unit contributions and company-level models.

### 4. Scalability
* **Repeatable Acquisition:** Customer 20 is acquired via a partner integrator's installed base rather than founder cold-calling.
* **Teachable Delivery:** Standardized conveyor widths, fixed optical envelopes, prewired cabinets, versioned PLC handshake blocks, and FAT/SAT checklists allow integrator technicians and trained vision engineers to execute delivery without founder attendance.
* **Recurring Value:** Grounded in tangible operational state changes (private-label SKU additions, film/artwork revisions, ribbon/printer head swaps, optical drift, audit re-validation).
* **Accumulating Asset:** A proprietary defect image library mapped to packaging film, lighting geometry, printer type, line speed, and validation results.

### 5. Incumbents and Capture
* **Competitor Grounding:** Incumbents are treated fairly from their own primary product documentation:
  * **Domino R-Series:** Printer-vision integration and sample testing lab.
  * **Videojet-Laetus:** Integrated OCR/OCV, IP67 camera options, and SKU control.
  * **PackCheck (Vi-Track):** Recipe-controlled THT verification, ejection, and Vezet case study.
  * **Vision Partners (EVIS):** Date/seal/barcode inspection with MES/PLC integration.
* **Margin Capture Risk:** Directly addressed. Integrators have the relationships, local presence, and PLC capabilities; printer OEMs have single-vendor procurement appeal.

### 6. Capable Failure
* **Failure Mechanism:** Avoids straw-man "poor execution." The founder delivers high-quality optical modules across five successful installations; the integrator learns the illumination geometries and software thresholds, while printer vendors bundle inline vision during line refreshes; the integrator expands its own platform to absorb date checking and stops ordering the module without breaching contracts.

### 7. Dutch-Language Dependence & Reader Constraints
* **Language Strategy:** Cold factory floor outreach, safety compliance discussions, and operator training are delegated to the Dutch integrator; the English-speaking founder conducts technical workshops and commissioning, developing B1/B2 Dutch over time.
* **Reader Constraints:** €100,000 capital cap and Zaandam base are integrated realistically into travel and staging assumptions.

### 8. Receipts
* All 24 `<!-- CHECK: id -->` markers in the HTML match the 24 rows in `checks/claims/03.tsv`.
* Inferences (`03-no-budget-proof`, `03-evis-channel`, `03-incumbent-inference`, `03-prices`, `03-stat-test`, `03-prospect-list`) are transparently labeled.

### 9. Verdict and Kill Assumption
* **Verdict:** `TEST THROUGH A PARTNER` is the exact verdict earned by the evidence (direct entry fails Dutch language and machinery-integration constraints).
* **Kill Assumption:** Targets the central vulnerability: whether Vision Partners (or an equivalent integrator) will resell the module while conceding wholesale margin and data rights.

### 10. Readability & Structure
* All sentences are strictly under 40 words (maximum sentence length is 39 words).
* Paragraphs are analytical, tightly scoped, and free of startup fluff or ungrounded jargon.

---

## 2. Findings Ranked by Severity

### Finding 1 (Medium Severity): Stacked `CHECK` Markers Across Multi-Clause and Multi-Vendor Sentences (Rule 8)

* **Quote 1 (Lines 40 & 102):**
  > "Domino’s R-Series packages code validation with preconfigured cameras and lights, while Videojet-Laetus combines OCR/OCV, printer synchronisation and SKU control. `<!-- CHECK: 03-domino-range --><!-- CHECK: 03-videojet-system -->`"
* **Quote 2 (Line 40):**
  > "Cognex currently presents In-Sight 3800 as able to read food-and-beverage lot and expiry codes on uneven surfaces; its documentation lists global-shutter monochrome sensors, discrete I/O, Ethernet and IP67 protection when correctly assembled. `<!-- CHECK: 03-cognex-ocr --><!-- CHECK: 03-cognex-spec -->`"
* **Quote 3 (Line 88):**
  > "From 20 January 2027 the EU Machinery Regulation applies, and a party making a substantial modification can be treated as the manufacturer with conformity obligations for the affected machinery. `<!-- CHECK: 03-machinery-date --><!-- CHECK: 03-substantial-mod -->`"
* **Quote 4 (Line 90):**
  > "EHEDG describes five principles—material compatibility, cleanability, drainability, accessibility and segregation—and ISO 14159 covers hygiene requirements for machinery used where consumer risk can arise. `<!-- CHECK: 03-ehedg-principles --><!-- CHECK: 03-iso-hygiene -->`"
* **Quote 5 (Line 101):**
  > "Its Vi-Track material advertises recipe-controlled THT inspection, API control, ejection and a web dashboard; it also publishes a customer account in which Vezet selected the company to inspect film, codes and labels on vegetable bagging lines. `<!-- CHECK: 03-packcheck-product --><!-- CHECK: 03-packcheck-case -->`"
* **What the cited sources actually support:**
  * `03-domino-range` supports Domino's product features, while `03-videojet-system` supports Videojet-Laetus. Stacking them at the end of the sentence breaks the rule that each marker immediately follows the specific claim it receipts.
  * `03-cognex-ocr` supports the OCR use-case on page 6 of the datasheet; `03-cognex-spec` supports the hardware/interface specifications in the reference manual.
  * `03-machinery-date` supports Article 54 of Regulation (EU) 2023/1230; `03-substantial-mod` supports Article 18.
  * `03-ehedg-principles` supports the EHEDG congress abstract; `03-iso-hygiene` supports the ISO 14159 catalogue listing.
  * `03-packcheck-product` supports Vi-Track features; `03-packcheck-case` supports the Vezet testimonial.
* **Concrete Fix:** Split compound sentences or place the markers immediately after their respective clauses:
  ```html
  <!-- Fix 1: Inline placement for Domino and Videojet -->
  Domino’s R-Series packages code validation with preconfigured cameras and lights, <!-- CHECK: 03-domino-range --> while Videojet-Laetus combines OCR/OCV, printer synchronisation and SKU control. <!-- CHECK: 03-videojet-system -->

  <!-- Fix 2: Inline placement for Cognex -->
  Cognex currently presents In-Sight 3800 as able to read food-and-beverage lot and expiry codes on uneven surfaces; <!-- CHECK: 03-cognex-ocr --> its documentation lists global-shutter monochrome sensors, discrete I/O, Ethernet and IP67 protection when correctly assembled. <!-- CHECK: 03-cognex-spec -->

  <!-- Fix 3: Inline placement for Machinery Regulation -->
  From 20 January 2027 the EU Machinery Regulation applies, <!-- CHECK: 03-machinery-date --> and a party making a substantial modification can be treated as the manufacturer with conformity obligations for the affected machinery. <!-- CHECK: 03-substantial-mod -->

  <!-- Fix 4: Inline placement for EHEDG and ISO -->
  EHEDG describes five principles—material compatibility, cleanability, drainability, accessibility and segregation— <!-- CHECK: 03-ehedg-principles --> and ISO 14159 covers hygiene requirements for machinery used where consumer risk can arise. <!-- CHECK: 03-iso-hygiene -->

  <!-- Fix 5: Inline placement for PackCheck -->
  Its Vi-Track material advertises recipe-controlled THT inspection, API control, ejection and a web dashboard; <!-- CHECK: 03-packcheck-product --> it also publishes a customer account in which Vezet selected the company to inspect film, codes and labels on vegetable bagging lines. <!-- CHECK: 03-packcheck-case -->
  ```

---

### Finding 2 (Medium Severity): Missing Source Excerpt Text Files (Rule 8 / AGENT.md Pre-ship Test)

* **Quote:** N/A (Missing directory [resources/sources/03/excerpts/](file:///home/diablo/book18/resources/sources/03/))
* **What the cited source supports:** [AGENT.md](file:///home/diablo/book18/AGENT.md) dictates: *"A verified row without an excerpt is not verified."* While [CONTEXT.md](file:///home/diablo/book18/CONTEXT.md) Section 9 introduces excerpt files as a strict publishing requirement from Essay 6 onward, satisfying the full pre-ship test for the book requires preserving the exact cited passages locally. Currently, [checks/claims/03.tsv](file:///home/diablo/book18/checks/claims/03.tsv) contains 18 `verified` rows whose `source_locator` fields refer to section headers and page numbers rather than local `.txt` excerpt files.
* **Concrete Fix:**
  1. Create `resources/sources/03/excerpts/`.
  2. Save verbatim extracts for the 18 verified claims (e.g., `nvwa-date-guidance.txt`, `directive-2011-91.txt`, `general-food-law-18-19.txt`, `nvwa-upfront-warning.txt`, `machinery-reg-54.txt`, `machinery-reg-18.txt`, `cognex-3800-ocr.txt`, `packcheck-vitrack.txt`, etc.).
  3. Update the `source_locator` column in `checks/claims/03.tsv` to reference the excerpt files.

---

### Finding 3 (Low Severity): Stale Footer Text Referencing Five Candidates (Rule 1 & Readability)

* **Quote (Line 152):**
  > `<footer class="site-footer"><div class="wrap"><p>Five candidates. One second engine. Evidence before commitment.</p></div></footer>`
* **What the cited source supports:** [CONTEXT.md](file:///home/diablo/book18/CONTEXT.md) Section 9 confirms that on 2026-09-02, the book expanded from five to seven essays (adding Grid-congestion hubs and EUDI wallets). The chapter kicker (`line 24`) correctly announces `"Essay 3 of 7"`, making the footer's `"Five candidates"` an outdated artifact.
* **Concrete Fix:** Update `line 152` in `chapters/03-machine-vision-food.html`:
  ```html
  <footer class="site-footer"><div class="wrap"><p>Seven candidates. One second engine. Evidence before commitment.</p></div></footer>
  ```

---

## 3. Verdict and Top Fixes

**Verdict:** **REVISE**

### The Three Fixes That Matter Most:
1. **Unstack Multi-Claim `CHECK` Markers:** Move the stacked claim markers in lines 40, 88, 90, 101, and 102 so that each marker immediately follows its specific clause (distinguishing Domino vs. Videojet, Machinery application dates vs. substantial modifications, and EHEDG principles vs. ISO 14159).
2. **Build the Local Excerpt Archive:** Populate `resources/sources/03/excerpts/` with the raw text extracts supporting all 18 verified rows and update `checks/claims/03.tsv` locators to ensure complete offline auditability.
3. **Synchronize Footer Metadata:** Update the footer text from `"Five candidates"` to `"Seven candidates"` to maintain consistency across the expanded 7-chapter book.
