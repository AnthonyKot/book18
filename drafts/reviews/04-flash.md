# Editorial & Technical Review: Essay 04 (*White-Label Industrial Asset Intelligence*)

**File Reviewed:** `chapters/04-asset-intelligence.html`  
**Claim Ledger:** `checks/claims/04.tsv`  
**Source Index:** `resources/sources/04/SOURCES.md`  
**Rules & Standards:** `CONTEXT.md` (Sections 1–7), `AGENT.md` (Priority Stack & Pre-Ship Test)

---

## Executive Summary & Systematic Rule Audit

| Rule / Criteria | Status | Audit Summary |
| :--- | :---: | :--- |
| **1. Never false** | **PASS** | No proposal is presented as enacted law; text explicitly states there is no statutory mandate driving purchase. Design hurdles (€7,500 diagnostic, €18,000 onboarding, €2,000/mo site fee, €12/mo asset fee) are explicitly labelled as required design gates, never reported as market averages. Primary source vendor citations are accurate. |
| **2. Buyer & event** | **PASS** | Managing Director or Service Director of a Benelux rotating-equipment maintenance contractor. Purchase event is an industrial contract renewal or competitive tender where the client demands digital evidence and continuous monitoring. |
| **3. Economics** | **PASS** | Separates revenue, gross margin, operating expenses, founder replacement labour (€75k Y1 / €100k mature), working capital (€60k–€80k startup gap, €70k cash buffer), and owner income. Arithmetic is internally consistent across all tiers (Year 1: €150k rev, 71% GM, –€4k operating result; Mature: €636k rev, 80% GM, €188k pretax retained profit). Refuses hardware pass-through. |
| **4. Scalability** | **PASS** | Concretely differentiates Customer 1 (bespoke mapping, alert triage shadowing), Customer 5 (canonical schema, trained delivery engineer, technician checklists), and Customer 20 (3–5 enabled maintenance partners, accumulating connector library, alert-to-work history, partner playbooks). Avoids treating "platform" as magic. |
| **5. Incumbents & capture** | **PASS** | Incumbents (Siemens Senseye, IBM Maximo, Augury, SKF) and Dutch channels (SPIE, ERIKS, VIBRO, Istec) are evaluated fairly from their technical capabilities. Margin capture by the maintenance partner and plant APM disintermediation are directly confronted. |
| **6. Capable failure** | **PASS** | Non-straw-man failure mode: the software executes well, prevents machine failures, and generates timely reports, but the partner captures customer goodwill and learning, hires an in-house engineer or switches to an OEM bundle, demands a 40% wholesale discount, and squeezes the software entrant into an unprofitable subcontractor. |
| **7. Language & constraints** | **PASS** | Reader constraints respected (A2 Dutch, EUR 100k capital, no field work). Channel dependency is explicit: the local partner owns the wrench, Dutch plant-floor conversations, sensor installation, and physical repairs. A Dutch-speaking reliability specialist is budgeted for initial deliveries. |
| **8. Receipts** | **FAIL** | Multiple `CHECK` markers are stacked together at the end of multi-clause sentences instead of immediately following the supported clause. Furthermore, local text excerpt files under `resources/sources/04/excerpts/` are missing for the 9 `verified` ledger rows. |
| **9. Verdict** | **PASS** | Earns `TEST THROUGH A PARTNER`. The kill criteria correctly identify the existential assumptions: failure of partners to pay the diagnostic, refusal to return coded work outcomes, or restrictive data terms that prevent building a reusable runbook asset. |
| **10. Readability** | **FAIL** | Contains 4 sentences exceeding the strict 40-word limit. Paragraph lengths and jargon mechanisms are otherwise well-managed. |

---

## Detailed Findings Ranked by Severity

### Finding 1 (Severity: High) — Stacked & Misplaced `CHECK` Markers (Rule 8)

* **Quote 1 (Lines 77):**
  > `"Augury can bundle sensors, diagnostics and expert validation; SKF can bundle sensors, CMMS interfaces, certified analysts and field service. <!-- CHECK: 04-augury-bundle --><!-- CHECK: 04-skf-bundle -->"`
* **Quote 2 (Line 78):**
  > `"The channel is equally dangerous. ERIKS already describes its own Smart Asset Management platform and software team; SPIE already spans maintenance advice, implementation and an EAM partnership. <!-- CHECK: 04-eriks-offer --><!-- CHECK: 04-spie-offer -->"`

* **What the cited sources actually support:**
  * `04-augury-bundle` points to Augury's Machine Health page (`https://www.augury.com/machine-health/`), supporting only the first clause regarding Augury's sensor, diagnostic, and expert bundle.
  * `04-skf-bundle` points to SKF's condition monitoring brochure (`cdn.skfmediahub.skf.com/...`), supporting only the second clause regarding SKF's CMMS interfaces and certified analysts.
  * `04-eriks-offer` points to ERIKS Predictive Maintenance (`eriks.nl/...`), supporting only ERIKS's Smart Asset Management platform and team.
  * `04-spie-offer` points to SPIE Nederland Maintenance Solutions (`spie-nl.com/...`), supporting only SPIE's maintenance services and IFS Ultimo partnership.
  * Placing stacked comments at the end of compound sentences violates the rule that each `<!-- CHECK: id -->` marker must immediately follow the sentence or clause it substantiates.

* **Concrete Fix:**
  Move the first marker in each pair to immediately follow its corresponding semicolon clause:
  ```html
  <!-- Fix for Quote 1 (Line 77) -->
  <p>Augury can bundle sensors, diagnostics and expert validation; <!-- CHECK: 04-augury-bundle --> SKF can bundle sensors, CMMS interfaces, certified analysts and field service. <!-- CHECK: 04-skf-bundle --> Their most effective response is not a price cut.</p>

  <!-- Fix for Quote 2 (Line 78) -->
  <p>The channel is equally dangerous. ERIKS already describes its own Smart Asset Management platform and software team; <!-- CHECK: 04-eriks-offer --> SPIE already spans maintenance advice, implementation and an EAM partnership. <!-- CHECK: 04-spie-offer --> A capable regional partner can standardise on SKF, Siemens or a CMMS module...</p>
  ```

---

### Finding 2 (Severity: Medium) — Missing Text Excerpt Files for Verified Claims (Rule 8)

* **Passage / Location:** `checks/claims/04.tsv` (Lines 2–10) and missing directory `resources/sources/04/excerpts/`.
* **What the cited sources actually support:**
  * `AGENT.md` and Rule 8 state: *"every verified row has an excerpt that says what the claim says; A verified row without an excerpt is not verified."*
  * All 9 claims in `checks/claims/04.tsv` are marked `verified`, but the `source_locator` column contains free-form text references (e.g. `Machine Data, lines 106-128`, `VIBRO Services`) rather than pointing to saved verbatim text files in `resources/sources/04/excerpts/<slug>.txt`.
* **Concrete Fix:**
  1. Create directory `resources/sources/04/excerpts/`.
  2. Save the verbatim quoted text from the 9 URLs into individual text files (e.g., `resources/sources/04/excerpts/04-senseye-ingestion.txt`, `04-augury-bundle.txt`, etc.), formatted with the source URL, access date, and exact quote.
  3. Update `checks/claims/04.tsv` so that each `source_locator` references its respective `.txt` excerpt filename.

---

### Finding 3 (Severity: Medium) — Sentences Exceeding the 40-Word Limit (Rule 10)

Four sentences in the chapter exceed the 40-word readability ceiling:

#### Passage 3A (52 words, Line 46):
* **Quote:**
  > `"Start with ten prospect types, each close enough to rotating machinery to own the outcome: an independent vibration-analysis practice; pump repairer; motor and gearbox workshop; industrial lubrication contractor; compressor-service firm; marine rotating-equipment specialist; food-factory maintenance contractor; water and wastewater service company; multi-brand HVAC/chiller service firm; and a regional electrical-mechanical maintenance provider."`
* **Concrete Fix:** Split the introductory clause and convert the prospect categories into concise sentences or list structure:
  > *"Start with ten prospect types close enough to rotating machinery to own the outcome. These include independent vibration-analysis practices, pump repairers, motor and gearbox workshops, industrial lubrication contractors, compressor-service firms, marine rotating-equipment specialists, food-factory contractors, water utilities contractors, HVAC/chiller service firms, and regional electro-mechanical providers."*

#### Passage 3B (48 words, Line 98):
* **Quote:**
  > `"Pass: one partner pays for the diagnostic, introduces an end customer, accepts the liability boundary and data feedback, then signs either the production order or a dated letter authorising it at no less than €18,000 onboarding plus €2,000 per site per month and an asset fee."`
* **Concrete Fix:** Split into two sentences at the signature event:
  > *"Pass: one partner pays for the diagnostic, introduces an end customer, and accepts the liability boundary and data feedback. The partner then signs the production order or a dated letter authorising it at no less than €18,000 onboarding plus €2,000 per site per month and an asset fee."*

#### Passage 3C (47 words, Line 30):
* **Quote:**
  > `"The deliverable is deliberately narrower than “predictive maintenance.” It ingests the partner's route files and selected online streams; reconciles asset identities; preserves measurements, alarms, reviews and work outcomes; gives an analyst a queue; publishes a white-label monthly report; and opens a documented route into the customer's CMMS."`
* **Concrete Fix:** Split at the analyst queue transition:
  > *"The deliverable is deliberately narrower than “predictive maintenance.” It ingests the partner's route files and online streams, reconciles asset identities, and preserves measurements, alarms, reviews and work outcomes. It then gives an analyst a queue, publishes a white-label monthly report, and opens a documented route into the customer's CMMS."*

#### Passage 3D (42 words, Line 29):
* **Quote:**
  > `"The initial buyer is the managing director or service director of a Benelux rotating-equipment maintenance company: large enough to run scheduled vibration, temperature, oil or electrical routes for several factories, small enough not to have a credible customer portal and analytics team."`
* **Concrete Fix:** Split into two distinct sentences:
  > *"The initial buyer is the managing director or service director of a Benelux rotating-equipment maintenance company. The business is large enough to run scheduled condition-monitoring routes for several factories, but lacks a credible customer portal and analytics team."*

---

## Verdict & Action Plan

### Final Verdict: `REVISE`

The essay is substantively excellent: its commercial logic, unit economics, non-straw-man failure analysis, and reader constraints are fully aligned with the book's thesis. It requires straightforward mechanical revisions before shipping.

### The Three Fixes That Matter Most

1. **Unstack the CHECK Markers (Finding 1):** Place `04-augury-bundle` and `04-eriks-offer` immediately after the individual clauses they support in Section 5 (`competition`).
2. **Generate Verbatim Excerpt Files (Finding 2):** Create `resources/sources/04/excerpts/` containing the exact passages for all 9 `verified` claims, and update `checks/claims/04.tsv` locators to point to these files.
3. **Refactor the Four 40+ Word Sentences (Finding 3):** Split the dense sentences in lines 29, 30, 46, and 98 to comply with the 40-word maximum.
