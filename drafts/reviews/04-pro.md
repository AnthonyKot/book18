I have reviewed `chapters/04-asset-intelligence.html` against the strict criteria in `CONTEXT.md` and `AGENT.md`. 

The essay is remarkably strong. It successfully establishes a plausible buyer and event, isolates the founder’s A2 Dutch language constraint, brilliantly models the economics (explicitly labelling them as a design hurdle rather than market facts), and presents a devastatingly credible "capable failure."

However, there are three areas requiring revision, ranked below by severity.

### 1. Receipts: Missing Excerpt Files (Severity: High)
* **Rule:** "Receipts: ... every verified row has an excerpt that says what the claim says"
* **Quote:** N/A (applies to all 9 `verified` claims in `checks/claims/04.tsv`)
* **What the cited source actually supports:** The live URLs and TSV claims verify the data correctly, but the physical excerpt files themselves do not exist. While `CONTEXT.md` notes this standard applies "From essay 6 onward," applying your explicit pre-ship test rule reveals that the directory `resources/sources/04/excerpts/` is missing entirely. 
* **Concrete fix:** Create the directory `resources/sources/04/excerpts/` and save a `.txt` excerpt for each of the 9 claims containing the URL, fetch date, and verbatim supporting text to guarantee offline auditability.

### 2. Readability: Sentences over 40 words (Severity: Medium)
* **Rule:** "Readability: wall paragraphs, sentences over 40 words, jargon without mechanism."
* **Quote(s):** 
  1. *"The initial buyer is the managing director or service director of a Benelux rotating-equipment maintenance company: large enough to run scheduled vibration, temperature, oil or electrical routes for several factories, small enough not to have a credible customer portal and analytics team."* (43 words)
  2. *"The deliverable is deliberately narrower than “predictive maintenance.” It ingests the partner's route files and selected online streams; reconciles asset identities; preserves measurements, alarms, reviews and work outcomes; gives an analyst a queue; publishes a white-label monthly report; and opens a documented route into the customer's CMMS."* (47 words)
  3. *"Start with ten prospect types, each close enough to rotating machinery to own the outcome: an independent vibration-analysis practice; pump repairer; motor and gearbox workshop; industrial lubrication contractor; compressor-service firm; marine rotating-equipment specialist; food-factory maintenance contractor; water and wastewater service company; multi-brand HVAC/chiller service firm; and a regional electrical-mechanical maintenance provider."* (52 words)
  4. *"Pass: one partner pays for the diagnostic, introduces an end customer, accepts the liability boundary and data feedback, then signs either the production order or a dated letter authorising it at no less than €18,000 onboarding plus €2,000 per site per month and an asset fee."* (47 words)
* **What the cited source actually supports:** Prose issue (no external source).
* **Concrete fix:** Split these sentences. For example, the 52-word list can be split into two sentences: *"Start with ten prospect types close enough to rotating machinery to own the outcome. Examples include an independent vibration-analysis practice, pump repairer, motor and gearbox workshop, industrial lubrication contractor, or compressor-service firm..."* The pass condition can be rewritten: *"Pass: one partner pays for the diagnostic, introduces an end customer, and accepts the liability boundary and data feedback. The partner must then sign either the production order or a dated letter authorising it at the hurdle price (no less than €18,000 onboarding plus €2,000 per site per month and an asset fee)."*

### 3. Receipts: Misaligned CHECK marker (Severity: Minor)
* **Rule:** "Receipts: every CHECK marker's row supports the sentence it follows"
* **Quote:** *"Siemens can pair broad ingestion with an established predictive-maintenance workflow. `<!-- CHECK: 04-senseye-ingestion -->`"*
* **What the cited source actually supports:** The TSV claim for `04-senseye-ingestion` explicitly details ingestion formats (API, MQTT, S3) and frequency limits (1 Hz, waveforms, spectra). It does not contain evidence supporting the "established predictive-maintenance workflow" half of the sentence, even though Senseye itself is a predictive maintenance tool.
* **Concrete fix:** Create a new claim row (e.g., `04-senseye-workflow`) that explicitly cites Senseye's workflow capabilities, or amend the TSV text for `04-senseye-ingestion` to capture the introductory text on the Siemens page stating the product is used for predictive maintenance. 

***

### Verdict and Fixes

**REVISE**

The three fixes that matter most:
1. Generate and save the 9 verbatim text excerpts in `resources/sources/04/excerpts/` to meet the strict receipt rule.
2. Break the four 40+ word sentences into shorter, punchier prose. 
3. Fix the `04-senseye-ingestion` marker in paragraph 7 so the TSV claim fully covers the "predictive-maintenance workflow" assertion.
