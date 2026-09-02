Here is the review of Chapter 02 against the book's rules, prioritized by severity.

### 1. Missing Excerpts for Verified Claims (Severity: High)
* **Passage/Rule:** Rule 8: *"Receipts: [...] every verified row has an excerpt that says what the claim says"*
* **What the source actually supports:** The `checks/claims/02.tsv` ledger marks 11 claims as `verified`. However, the directory `resources/sources/02/excerpts/` does not exist. The `source_locator` column relies solely on textual references (e.g., "Article 14(1)-(4)") instead of pointing to local excerpt files, meaning the claims cannot be instantly audited against verbatim text. *(Note: While `CONTEXT.md` exempts essays 1-5 from this rule, the pre-ship test and prompt instructions explicitly enforce it).*
* **Fix:** Create the `resources/sources/02/excerpts/` directory. Save the verbatim text for all 11 claims as `.txt` files, and update the `source_locator` column in the TSV to reference these file paths. 

### 2. False Date on Primary Source (Severity: High)
* **Passage:** *"In a small 2024 qualitative study of industrial-equipment organisations, respondents highlighted secure-development governance..."* (Line 39)
* **What the source actually supports:** Claim `02-survey-pain` cites an arXiv paper (`https://arxiv.org/abs/2505.14325`). Both the URL signature (`2505`) and the `SOURCES.md` file date this publication to **20 May 2025**. Presenting it as a "2024" study misaligns with the cited primary source's publication date, violating the "Never false" rule.
* **Fix:** Change "2024 qualitative study" to "2025 qualitative study" to accurately match the publication date, or explicitly clarify that "In a study published in 2025 based on 2024 interviews..."

### 3. Readability Limits Exceeded (Severity: Medium)
* **Passage 1:** *"The back office sells the partner a fixed wholesale delivery unit for one end-customer product family: evidence intake, firmware/SBOM analysis orchestration, threat and vulnerability triage, secure-development evidence mapping, a vulnerability-disclosure workflow, an incident tabletop, and a branded delivery pack in the partner's template."* (43 words, heavy jargon)
* **Passage 2:** *"Importers or distributors become manufacturers when they place a product on the market under their own name or trademark or substantially modify it; a separate party making a substantial modification and remarketing the product also takes manufacturer obligations for the affected part or whole."* (44 words)
* **Passage 3:** *"Hard2bit publicly offers white-label, co-branded and referral models in which the partner retains the contract and client relationship while the specialist operates behind it; it says margins are negotiated rather than published and that its certifications do not transfer to the reseller."* (42 words)
* **What the source actually supports:** Rule 10 prohibits sentences over 40 words and jargon without mechanism. Passage 1 stacks several un-mechanised industry terms ("SBOM analysis orchestration", "incident tabletop", "threat and vulnerability triage") inside a very long sentence.
* **Fix:** Split the sentences. For Passage 1: break up the list to reduce jargon density. *(e.g., "...for one end-customer product family. The package includes evidence intake, firmware analysis, and threat triage. The partner receives a branded delivery pack...")*. For Passages 2 and 3: replace the semicolons with periods to create two distinct sentences.

***

### Conclusion

**Verdict: REVISE** 

The essay successfully passes the economic, scalability, and Dutch-language tests, and appropriately identifies partner capture as the fatal kill assumption. However, it fails mechanical compliance checks. 

**The three fixes that matter most:**
1. Extract and save the verbatim text for the 11 verified claims into the missing `excerpts` folder to make the research audit-ready.
2. Correct the survey publication date from 2024 to 2025 to comply with the "Never false" rule. 
3. Split the three 40+ word sentences, specifically unpacking the dense jargon in the wholesale delivery unit description.
