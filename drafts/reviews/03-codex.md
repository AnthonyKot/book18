**Verdict: REVISE — the business argument is strong, but one technical sentence is false, one verified receipt is incomplete, and validation/liability need tightening before publication.**

## Ranked consolidated findings

### 1. Medium — Global shutter does not itself “freeze motion”

> “A global-shutter monochrome camera freezes motion.” ([chapter line 86](/home/diablo/book18/chapters/03-machine-vision-food.html:86))

A global shutter exposes all sensor rows together, avoiding rolling-shutter distortion. Motion blur still depends on exposure duration, object speed, magnification and available illumination. Cognex’s own documentation says shorter exposure durations are what stop motion.

Fix: replace with something like:

> “A global shutter avoids line-by-line distortion; sufficiently short exposure, supported by adequate or strobed illumination, limits motion blur at line speed.”

Add a CHECK row and cite the [Cognex exposure documentation](https://docs.cognex.com/isvidi_150/web/EN/Help_ISViDi/Content/Topics/Spreadsheet/VisionTools/AcquireImage.htm).

### 2. Medium — `03-cognex-spec` is only partially verified

> “...global-shutter monochrome sensors, discrete I/O, Ethernet and IP67 protection...” ([chapter line 40](/home/diablo/book18/chapters/03-machine-vision-food.html:40))

The ledger URL for [`03-cognex-spec`](/home/diablo/book18/checks/claims/03.tsv:11) opens only the image-sensor table. It supports monochrome variants and global shutter, but contains nothing about discrete I/O, Ethernet or IP67. Those facts are true, but not verified by the recorded URL.

Fix: split the claim or add Cognex’s [system-specifications page](https://docs.cognex.com/isvs_2620/web/EN/is3800-manual/Content/Topics/specifications/specifications-3800.htm), which actually lists the I/O, Ethernet and conditional IP67 rating. Also receipt or remove the otherwise unsupported Keyence mention at chapter line 102.

### 3. Medium — False-accept liability is absent from the economics

The chapter assigns the integrator mechanics, PLC work, machinery conformity and the end-customer contract, while the new company owns optical/software validation and second-line support. It budgets only €1,500 per cell as a warranty reserve.

No passage says who pays when a software or optical false accept contributes to a retailer claim, product hold, withdrawal or recall. “We do not promise to prevent recalls” is sensible positioning, but does not prevent contractual claims from the integrator.

Fix: add the proposed liability boundary, indemnity/cap assumptions, required product/professional-liability cover, and an insurance quote or explicit validation hurdle. Stress-test the mature result against one material claim rather than treating two commissioning revisits as the largest downside.

### 4. Medium — The acceptance test lacks an independent holdout design

> “The factory test runs 3,000 labelled defect images with zero misses, then a site test runs at least 100 physical challenge packs...” ([chapter line 89](/home/diablo/book18/chapters/03-machine-vision-food.html:89))

The chapter correctly warns that correlated images do not establish zero field risk, but still makes “zero misses” the FAT gate without saying whether the 3,000 images are independent of tuning. The 100 physical packs are not allocated across the twelve defect classes, films, speeds or print conditions.

Fix: specify an untouched holdout set, minimum trials per defect class and condition, provenance separation from tuning data, and separately reported false-accept and false-reject confidence bounds.

### 5. Low — Stale five-candidate footer

> “Five candidates. One second engine.” ([chapter line 152](/home/diablo/book18/chapters/03-machine-vision-food.html:152))

This conflicts with “Essay 3 of 7” and the current seven-essay book structure.

Fix: change “Five” to “Seven.”

## Reviewer findings adjudicated

| Reviewer finding | Status | Verification |
|---|---|---|
| Flash: food-date, lot, traceability and hygiene claims are accurate | **CONFIRMED** | The cited [NVWA guidance](https://www.nvwa.nl/onderwerpen/voedselveiligheid/etikettering-van-levensmiddelen/houdbaarheidsdatum-levensmiddelen), [lot directive](https://eur-lex.europa.eu/eli/dir/2011/91/oj/eng), General Food Law and hygiene regulation support the restrained wording. |
| Flash: Machinery Regulation applies from 20 January 2027 | **CONFIRMED** | The corrected consolidated text says 20 January 2027. The original 14 January date was corrected by the [official corrigendum](https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX%3A32023R1230R%2801%29). |
| Pro: 20 January is false and must become 14 January | **REJECTED** | The reviewer relied on the uncorrected original text and misreported it as the current consolidated text. Both the chapter and ledger are correct. |
| Flash: prices are clearly labelled as hurdles | **CONFIRMED** | The €3,500 offer is explicitly “not an observed market price”; line 79 labels all modeled volumes, prices and costs. |
| Flash: buyer and purchase event are named | **CONFIRMED** | Plant operations manager and code escape/corrective action or funded equipment change are explicit. |
| Flash: buyer/event are proven plausible | **UNVERIFIABLE** | No buyer interview, procurement or cheese-packer payment evidence exists. The chapter honestly treats this as the 90-day demand test. |
| Flash: demand is separated from regulation | **CONFIRMED** | The chapter explicitly says the NVWA warning is not evidence of willingness to pay. |
| Flash: economic arithmetic is internally consistent | **CONFIRMED** | Unit revenue, direct costs, mature revenue, €234,000 contribution and €74,000 retained result all recalculate correctly; the €100,000 capital allocation also sums correctly. |
| Flash: working capital is sufficient | **UNVERIFIABLE** | The deposit arithmetic is correct, but sufficiency depends on payment timing, VAT, claims, commissioning overruns and overlapping builds. It remains a design assumption. |
| Flash: the first/fifth/twentieth-customer model addresses scalability | **CONFIRMED** | Acquisition, teachable delivery, recurring state changes and the accumulating data asset are all concretely described. |
| Flash: that scaling model will work operationally | **UNVERIFIABLE** | Partner certification, one-engineer support capacity and access to usable anonymised data are expressly untested assumptions. |
| Flash: competitors are treated fairly | **CONFIRMED** | The descriptions match current vendor material from [Domino](https://www.domino-printing.com/en-us/products/r-series), [Videojet-Laetus](https://www.videojet.com/us/homepage/products/vision-systems.html), [PackCheck](https://packcheck.nl/vitrack-platform/) and [Vision Partners](https://visionpartners.nl/en/products/evis-label-packaging-inspection-system/). |
| Flash: margin capture is confronted | **CONFIRMED** | The partner-copying mechanism is the chapter’s central capable-failure case rather than a footnote. |
| Flash: capable failure is non-straw-man | **CONFIRMED** | It assumes successful engineering and sales, then failure through channel learning and bundling. |
| Flash: Dutch-language dependence is delegated appropriately | **CONFIRMED** | The partner owns Dutch introduction, safety discussion, training and first response. |
| Pro: the founder must achieve B1/B2 and perform Dutch commissioning inside 90 days | **REJECTED** | The chapter says the founder can work in English and “build” Dutch; it does not require B1/B2 within 90 days. The 90-day plan contains diagnostics and mechanism testing, not a completed production commissioning. The wording “for commissioning” is ambiguous and could still be clarified. |
| Flash: 24 markers match 24 ledger rows | **CONFIRMED** | Mechanical count confirms one marker for every ledger ID and no orphan row. |
| Flash: inference rows are honestly labelled | **CONFIRMED** | All six cited inference rows are marked `inference`. This does not cure the incomplete Cognex verified receipt noted above. |
| Flash and Pro: Essay 3 must have local excerpt files | **REJECTED** | Both reviewers omit the controlling qualifier in [AGENT.md](/home/diablo/book18/AGENT.md:36): excerpt files are mandatory “From essay 6 onward.” The generic checklist wording is overbroad for Essay 3. |
| Flash: stacked CHECK markers violate the immediate-placement rule | **REJECTED** | [AGENT.md](/home/diablo/book18/AGENT.md:35) permits a marker after the factual sentence or paragraph; it does not demand clause-level placement. Moreover, line 102 does not stack markers at all. Splitting compound claims may improve auditability, but it is not a rule violation. |
| Flash: stale footer | **CONFIRMED** | The chapter and CONTEXT now describe seven essays. |
| Flash: all sentences are under 40 words | **CONFIRMED** | Mechanical inspection found a maximum of 39 words. |
| Flash: prose is entirely free of readability problems | **UNVERIFIABLE** | This is subjective; no material wall-paragraph or jargon problem was found. |
| Flash: `TEST THROUGH A PARTNER` and its kill assumption are earned | **CONFIRMED** | The evidence supports bounded partner-led testing, not investment or direct entry. The partner-margin/data-rights assumption is correctly made the gate. |

## Three fixes that matter most

1. Correct and receipt the global-shutter/motion-blur explanation.
2. Repair `03-cognex-spec` and audit the remaining unmarked technical/competitor assertions.
3. Add independent validation criteria and an explicit false-accept liability/insurance model.

**Final verdict: REVISE.**
