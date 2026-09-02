**REVISE — the regulatory core is sound, but the channel economics and 90-day decision gate are not yet reliable enough to ship.**

# Consolidated review: Chapter 06

## Reviewer-finding dispositions

| Reviewer finding | Disposition | Verification |
|---|---|---|
| Flash 1: sentence fragment in economics | **CONFIRMED** | “Time-log integrations, tested commands…” is a verbless fragment in [the economics discussion](/home/diablo/book18/chapters/06-grid-capacity-hubs.html:74). |
| Flash 2: stacked Enexis CHECK markers | **REJECTED** | Both markers immediately follow the sentence and support distinct clauses: rollout supports ten sites/2027; GTO supports the EMS requirement. Splitting would improve precision but is not required by `AGENT.md`. |
| Flash 3: loose reuse of `06-contract-taxonomy` | **CONFIRMED**, but its proposed removal is wrong | The excerpt mentions a CBC duty and compensation, but the TSV row records only the taxonomy. Removing the marker would leave the sentence unreceipted; add or expand a claim instead. |
| Flash 4: incomplete navigation | **CONFIRMED** | [TEMPLATE.md](/home/diablo/book18/TEMPLATE.md:29) requires previous/contents/next. The fix must also update chapter 05’s next link and chapter 07’s previous link, which currently bypass chapter 06. |
| Flash 5: dense 38-word semicolon lists | **REJECTED** | The sentences are below the checklist’s 40-word trigger and are coherent enumerations. This is stylistic preference, not a demonstrated defect. |
| Pro 1: TSV mismatch for control duty/payment | **CONFIRMED** | This is the same substantive issue as Flash 3. |
| Pro 2: unexplained GOPACS/CSP jargon | **CONFIRMED** | The chapter names both without explaining that GOPACS is the flexibility-trading platform and a CSP bids for the customer. Liander itself provides that mechanism in its [congestion-management guide](https://www.liander.nl/grootzakelijk/energietransitie/alles-over-netcongestie/keuzehulp-deelnemen-congestiemanagement). |
| Pro 3: unexplained “peak shaving” | **CONFIRMED — Low** | A short explanation such as “suppressing short load spikes to remain below the limit” would make the vendor comparison more accessible. |

No reviewer finding was unverifiable.

## Ranked consolidated findings

### 1. High — The mandatory channel margin is omitted from the model it is meant to test

The production offer is “billed through the installer under a disclosed wholesale schedule,” yet the mature table records the full retail recurring amount:

> “15 sites × 12 months × €4.5k = €810k”

Only afterward does the prose observe that a 25% wholesale discount removes €202,500. That discount is not incorporated into revenue, gross margin, operating surplus, working capital, or the €100,000-capital test.

At the chapter’s own example discount, mature revenue falls from €974,000 to at most €771,500, gross margin from €729,000 to €526,500, and retained surplus after the stated operating costs, founder replacement and distribution from €419,000 to €216,500. Year-one loss grows from €64,000 to at least €84,250 if the same discount applies to recurring revenue.

The result may still pass, but the displayed 75% gross margin and cash reserve do not represent the prescribed route to market. The reviewers verified arithmetic while missing this commercial inconsistency. The direct-delivery bucket also does not show the cost assumptions behind “two delivery engineers,” specialist cover and cloud, weakening the required bottom-up test.

**Fix:** Put net wholesale receipts in the base table, state exactly which lines receive partner discounts, break the €245,000 delivery cost into headcount/specialist/cloud drivers, and recalculate peak cash need.

### 2. High — The 90-day test leaves the decisive failed outcome outside its kill rule

The verdict depends on whether an installer can sell the recurring layer separately. The pass rule therefore requires a production order—or a loosely defined “dated authority”—after the paid baseline. But the kill rule covers only:

- no paid baseline;
- no eligible blocked investment; or
- installer demands for all evidence and reusable work.

It does not classify the most revealing outcome: a customer pays €6,000 for the baseline but refuses the €20,000 onboarding and €4,500 monthly service. A non-binding “dated authority” could also be counted as a pass without validating payment.

**Fix:** Require a binding production order, deposit, or paid first month at the stated hurdle. Explicitly make failure to secure it after a successful baseline a kill or downgrade condition.

### 3. Medium — The civil-liability statement exceeds ACM’s stated boundary

The chapter says:

> “ACM expressly declined to set civil-liability terms because it lacks that power.”

The cited decision is narrower: ACM says it lacks authority to prescribe civil agreements between connected parties or groups and grid operators. It does not establish a general lack of authority over every relationship among members, installers and software suppliers. See [the saved excerpt](/home/diablo/book18/resources/sources/06/excerpts/gto-liability.txt:3) and the [official GTO decision](https://www.officielebekendmakingen.nl/stcrt-2025-43262.pdf).

The TSV row preserves that scope; the chapter drops it.

**Fix:** Write that ACM declined to prescribe liability allocation between the group and grid operator, then identify supplier/member allocation as a private-contract design question rather than an ACM holding.

### 4. Medium — `06-contract-taxonomy` does not receipt the second sentence that uses it

The sentence says:

> “These forms can create a control duty and a payment mechanism.”

The saved excerpt supports a narrower proposition: a CBC entails temporary voluntary load adjustment in exchange for compensation. The TSV row, however, says only that ACM distinguishes CBC, CSC, group variants, TBTR, TDTR and VVTR. See [06.tsv](/home/diablo/book18/checks/claims/06.tsv:7) and [contract-taxonomy.txt](/home/diablo/book18/resources/sources/06/excerpts/contract-taxonomy.txt:5).

“These forms” may also imply that every preceding form contains both duty and payment, which the excerpt does not establish.

**Fix:** Replace it with a CBC-specific sentence and a dedicated claim row, or expand the ledger claim while preserving the narrower scope.

### 5. Low — The economics paragraph contains a sentence fragment

> “Time-log integrations, tested commands, exceptions, overrides and incident reviews.”

This interrupts an otherwise clear explanation and leaves uncertain whether these are the engineers’ duties or additional cost drivers.

**Fix:** Join it to the preceding sentence: “The 7.5-site load is a design hurdle in which two delivery engineers handle integrations, tested commands, exceptions, overrides and incident reviews.”

### 6. Low — Two competitor/mechanism terms need explanation

“GOPACS via a Congestion Service Provider” and “peak shaving” are accurate but unexplained. This is especially noticeable because the business case depends on distinguishing market redispatch from local limit control.

**Fix:** Explain GOPACS/CSP on first use and define peak shaving as suppressing short demand spikes to stay below a limit.

### 7. Low — Chapter navigation is incomplete

[Chapter 06](/home/diablo/book18/chapters/06-grid-capacity-hubs.html:135) has empty previous and next positions despite the template requirement. Chapter 05 currently links directly to chapter 07, and chapter 07 links back to chapter 05.

**Fix:** Wire 05 → 06 → 07 in all three chapter files.

## What the reviewers got right

The live primary pages continue to support the central regulatory chronology: GTO applications are permitted now, while operators become obliged to offer them from 1 January 2027; Enexis still describes ten development parks and broader availability from 2027; and Liander publishes an active application route and roughly two-year formation timeline. [ACM](https://www.acm.nl/nl/publicaties/acm-energiehubs-kunnen-groepstransportovereenkomst-aanvragen-bij-hun-netbeheerder), [Enexis](https://www.enexis.nl/zakelijk/netcapaciteit/flexibiliteitsoplossingen/groepstransportovereenkomst), [Liander](https://www.liander.nl/grootzakelijk/energietransitie/samenwerken/transportovereenkomst-voor-groepen).

The buyer, blocked-investment event, Dutch-speaking channel, scalability milestones, capable-failure path and provisional `TEST THROUGH A PARTNER` verdict are otherwise credible.

## Three fixes that matter most

1. Rebuild the financial table using net wholesale revenue and bottom-up delivery costs.
2. Make refusal of the production order an explicit kill outcome.
3. Narrow the ACM liability sentence and repair the CBC receipt.

**Final verdict: REVISE.**
