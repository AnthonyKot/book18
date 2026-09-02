# Consolidated review — Chapter 07

**Verdict: REVISE — the legal deadline appears sound, but the operating model contains unresolved payer, data-custody, and workload contradictions that prevent shipping.**

## Ranked findings

### 1. High — The experiment’s kill rule contradicts the scalable labour model

> “If those events consume less than two hours per customer per month, €2,500 is unlikely to survive procurement.”  
> “Routine onboarding and monthly operation consume no more than six person-days per customer annually.”  
> “Kill: … less than one analyst-day of recurring work per month.”

The three thresholds in [the economics and experiment sections](/home/diablo/book18/chapters/07-eudi-wallet-acceptance.html:78) cannot coexist under their ordinary meaning:

- The kill rule requires at least twelve analyst-days of recurring work per customer annually.
- The scalability gate permits at most six person-days annually, including onboarding.
- A third threshold says fewer than roughly three person-days annually may not support the price.

This makes it impossible to tell what the experiment is measuring: supplier effort, customer effort avoided, or economic risk avoided.

Concrete fix: keep the six-day supplier-delivery ceiling, but replace the kill rule with a buyer-value test—for example, documented avoided internal labour or contract risk sufficient to support the €24–30k annual price. Then recompute delivery cost and capacity from one consistent workload assumption.

### 2. High — The proposed evidence asset may conflict with the cited intermediary-storage prohibition

The chapter correctly states:

> “An intermediary acting for a relying party is itself treated as a relying party and may not store transaction-content data.”

But the service also “preserves a decision record,” owns an “exportable evidence history,” and proposes storing “the verification result, policy version, issuer and credential references, timestamps and error evidence” ([lines 30 and 88–90](/home/diablo/book18/chapters/07-eudi-wallet-acceptance.html:88)).

Article 5b(10) says an intermediary acting for a relying party may not store data about transaction content. Verification results, issuer references and credential references may fall within that boundary; the chapter does not resolve it. [Regulation (EU) 2024/1183, Article 5b](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=celex%3A32024R1183)

Concrete fix: obtain counsel’s interpretation and specify the architecture. A plausible design is a customer-controlled evidence store with the operator retaining only permissible service telemetry, policy versions and conformance fixtures. Rework the “accumulating asset” if the company cannot lawfully own the proposed history.

### 3. High — “Customer twenty” changes the buyer topology without identifying the payer or relying party

The first buyer is a screening provider. Later:

> “Customer twenty operates through three to five screening or HR-technology partners. Each partner owns employer acquisition…”

Yet the mature model assumes twenty recurring customers, while the offer says the company will not sell directly to the screener’s employer clients. It is unclear whether:

- twenty screening providers each pay €2,500 monthly;
- three to five partners pay for twenty employer relying parties;
- or employers pay indirectly through a reseller.

That distinction controls registration count, liability, data custody, support load, channel margin and the €600k recurring-revenue calculation. Neither reviewer caught it.

Concrete fix: draw one explicit commercial and legal chain—who signs, invoices, registers as relying party, acts as intermediary, controls the evidence and handles employer exceptions. Include reseller discount or partner margin in the mature economics.

### 4. Medium — The deadline is likely correct, but the saved evidence omits one of its statutory triggers

The local evidence proves the certification act, Regulation 2024/2981, was published on 4 December 2024 and entered into force twenty days later. The statutory clock, however, refers to the implementing acts under both Article 5a(23) and Article 5c(6).

The missing protocol act, Regulation 2024/2982, was also published on 4 December 2024 and uses the same twenty-day entry rule. Thus 24 December 2026 and 24 December 2027 are supportable; they are not merely assumptions that the certification act was “the final trigger.” [Protocol act 2024/2982](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32024R2982), [certification act 2024/2981](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32024R2981)

Concrete fix: add Regulation 2024/2982 to the source index and ledger, save its publication and entry passage, and state that both relevant act families entered into force on 24 December 2024. Do not use the Pro reviewer’s proposed “assuming the certification act was the final trigger” wording.

### 5. Medium — The mature arithmetic is numerically correct but commercially underspecified

`20 × 12 × €2.5k = €600k` is correct arithmetic. The same column also contains eight diagnostics and eight onboardings, but never states opening customers, closing customers, churn or whether those onboardings replace departures.

The Pro reviewer incorrectly calls this an arithmetic error. Its proposed `16 × 12 + 8 × 6` formula still produces €600k and ends with 24 accounts, not the chapter’s stated twenty. The actual defect is missing cohort logic, compounded by the unresolved partner topology above.

Concrete fix: label the figure “twenty average active paying accounts” and show opening accounts, additions, churn and closing accounts—or present a clearly labelled steady-state run rate separate from annual onboarding revenue.

### 6. Medium — Several “verified” receipts are incomplete even though the underlying claims appear true

Both reviewers broadly pass receipt integrity too readily.

- [Registration claim](/home/diablo/book18/chapters/07-eudi-wallet-acceptance.html:43): the saved excerpt says verification is automated “where possible,” while the prose says registrars verify identity, authority and entitlement without qualification. The full act later imposes verification, but that mandatory passage is absent from the saved excerpt. [Regulation 2025/848, Article 6](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32025R0848)
- [Signicat claim](/home/diablo/book18/chapters/07-eudi-wallet-acceptance.html:97): the saved excerpt records the checklist phases and integration count, but omits Signicat’s explicit statement that it supports customers through the process. The live vendor page does support the claim, so the excerpt—not the prose—is deficient. [Signicat checklist](https://www.signicat.com/eudi-wallet-integration-checklist)
- [Job-use-case claim](/home/diablo/book18/chapters/07-eudi-wallet-acceptance.html:47): the repository supports “sharing a diploma when applying for a job.” Calling the whole screening workflow “technically intended” is a broader inference than that example establishes.

Concrete fix: extend the first two saved excerpts and narrow the third sentence to “the repository includes diploma sharing during a job application as an example.”

### 7. Low — One CHECK marker is misplaced

In the Datakeeper paragraph, `07-datakeeper-market` appears after the following API sentence rather than immediately after the market-scope sentence ([line 98](/home/diablo/book18/chapters/07-eudi-wallet-acceptance.html:98)).

Move each marker directly after its supported sentence.

### 8. Low — The Yivi sentence uses protocol labels without explaining the competitive mechanism

> “Yivi documents operational OpenID4VP disclosure of SD-JWT credentials…”

The source supports the terminology, but the sentence does not tell the reader what this means commercially: Yivi already supplies a standardized wallet-to-verifier presentation flow. This is a readability issue, not a substantive evidence failure.

Concrete fix: explain the mechanism in plain language, retaining the acronyms parenthetically if useful. Any stronger selective-disclosure claim should also be added to the saved excerpt.

### 9. Low — The footer still says five candidates

The footer says “Five candidates” although the book and kicker now contain seven ([line 151](/home/diablo/book18/chapters/07-eudi-wallet-acceptance.html:151)). Change it to “Seven candidates.”

## Disposition of every reviewer finding

| Reviewer finding | Disposition | Why |
|---|---|---|
| Flash: both deadline CHECK markers are improperly clustered | **REJECTED** | The rule permits markers immediately after a factual sentence **or paragraph**. Together the two markers support the deadline paragraph. The real problem is the missing protocol-act receipt, not placement. |
| Flash: Datakeeper CHECK markers are misplaced | **CONFIRMED** | `07-datakeeper-market` is one sentence late. |
| Flash: the 40-word operational sentence violates the readability rule | **REJECTED** | The checklist flags sentences **over** 40 words. The reviewer identifies this one as exactly 40, and its list remains intelligible. |
| Flash: stale five-candidate footer | **CONFIRMED** | `CONTEXT.md` and the chapter kicker both establish seven essays. |
| Pro: unexplained OpenID4VP/SD-JWT jargon | **CONFIRMED**, low severity | The acronyms are accurate but the competitive mechanism is not explained. This does not justify the reviewer’s near-blocking emphasis. |
| Pro: deadline arithmetic has an incomplete premise | **CONFIRMED IN SUBSTANCE** | The local evidence omits the Article 5a(23) protocol act. However, “assuming the certification act was final” is the wrong repair: the relevant protocol and certification acts share the same publication and entry dates. |
| Pro: mature recurring revenue is arithmetically inconsistent | **REJECTED AS STATED** | The multiplication and totals are correct, and the eight onboardings are not explicitly eight net-new accounts. The model does need cohort and churn assumptions, but the reviewer did not establish an arithmetic error. |

## What passes

The chapter successfully separates obligation from demand, identifies a specific initial buyer and purchase event, names credible substitutes and incumbents, respects the Dutch-language constraint, presents a genuine capable-failure case, and proposes a bounded paid experiment. Its `TEST THROUGH A PARTNER` chapter verdict remains defensible once the partner and relying-party topology is made explicit.

## Three fixes that matter most

1. Resolve who is buyer, relying party and intermediary—and where transaction evidence may legally be stored.
2. Align the recurring-work kill rule with the six-day scalability ceiling, then rebuild the mature cohort and channel economics.
3. Add the missing protocol-act receipt and repair the smaller excerpt and marker defects.

**Final verdict: REVISE.**
