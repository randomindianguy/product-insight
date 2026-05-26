---
name: product-insight
description: >
  Generate a differentiated, non-obvious product insight for a PM job application.
  Use this skill whenever the user is applying to a PM role and wants to build a
  product-level artifact (case study, portfolio piece, cold outreach hook, or
  application supplement) for a specific company. Also trigger when the user
  mentions "product insight," "application artifact," "PM portfolio piece,"
  "hire me artifact," "cold outreach insight," or shares a JD and asks for a
  differentiated angle. This skill walks through hypothesis generation, kill
  testing, structural evidence gathering, and produces a Minto-pyramid output
  the user can ship. Do NOT use for generic interview prep, behavioral questions,
  or resume editing — this is specifically for building a novel product thesis
  tied to a specific company and role.
---

# Product Insight Generator

Build a differentiated, evidence-backed product insight for a PM job application.
The output is a Minto-pyramid artifact: recommendation up front, supporting
arguments in the middle, data in the appendix. A hiring PM should understand in
15–30 seconds what the insight is and why this candidate is worth talking to.

The core philosophy: **hire for slope, not y-intercept.** The artifact must
demonstrate how the user thinks, not just what they know. Every section should
signal learning velocity, systems thinking, and the ability to find signal in
noise — not domain familiarity.

---

## Required Inputs

Before starting, collect these from the user. Use `ask_user_input` if they
haven't provided them upfront:

- **Company** and **role** (with JD text or link)
- **Product description** — what the product does, who it serves
- **User's own usage** — how they personally use the product, screenshots if
  available. First-party experience is the raw material that makes this
  artifact impossible for other applicants to replicate.
- **External sources** — which of these the user has reviewed or can provide:
  app store reviews, Reddit/forum threads, press releases, Year in Review
  reports, competitor comparisons, pricing pages, dev docs, support forums.

If any of these are missing, ask — but don't block on all four. Start with
what's available and flag gaps as you go.

---

## Phase 0 — Context Load

Read any project files the user has shared. Understand the company, product,
role, and the user's background. Note the user's domain experience and any
transferable mental models (e.g., EdTech → activation funnels, growth loops,
user segmentation).

Surface what you know and what's missing before moving on. This prevents
building on shaky foundations.

---

## Phase 1 — Altitude Check

Before doing any analysis, write one sentence framing the artifact as
business impact. This sentence is the acid test — if it doesn't land in 10
seconds for a hiring PM or connect to org-level priorities for a VP, rewrite
it until it does.

This step exists because most PM artifacts fail at altitude, not depth. They
go deep on a feature idea nobody in leadership cares about. Get the altitude
right first.

---

## Phase 2 — Hypothesize and Kill

Start with a hypothesis from the user's own usage or a tension they've
noticed. Then systematically try to kill it:

1. **Search what they've shipped** in the last 12 months (changelogs, blog
   posts, press releases). If the hypothesis describes something they just
   launched or are clearly building, it's dead.
2. **Check pricing and feature pages.** If the insight is visible on their
   marketing site, it's dead.
3. **Read their own words.** Search company blog posts, investor materials,
   earnings calls, founder interviews. Apply the kill test: if the company
   already uses your same language to describe the opportunity, it's dead.
   The thesis must name something they haven't named yet.
4. **Check forums and support responses.** Look for evidence the idea has
   been tried, deprioritized, or explicitly rejected.

Dead hypotheses are good — they prove rigor. Log each dead hypothesis with
one line on why it died, then generate the next one. Use `ask_user_input` to
check in with the user after 2–3 dead hypotheses to recalibrate direction.

The goal: find the gap between what the company says and what the product
does. That gap is where insight lives.

---

## Phase 3 — Re-derive from JD Tensions

Go line by line through the JD. Look for:

- **Mission-product gaps**: words in the mission statement that don't show up
  in the actual product experience.
- **Positioning contradictions**: where marketing claims outpace what the
  product delivers.
- **Growth-investment mismatches**: cross-reference published data (Year in
  Review, press, blogs) to find where user/revenue growth has outpaced
  product investment in a specific area.

This phase exists because JDs leak strategy. They tell you what the company
is worried about, what they're investing in next, and where they feel
under-resourced — if you read between the lines.

---

## Phase 4 — Narrow with Structural Evidence

Move from thesis to proof. Look for two types of evidence:

**Technical evidence:**
- API docs, developer docs, integration pages — these reveal architectural
  constraints and what the system can't easily do.
- Support pages, help center articles — these reveal repeated pain points
  the company has documented but not solved.

**User-generated evidence:**
- App store reviews (filter for 2–3 star reviews — they're the most
  informative: specific enough to be useful, not angry enough to be noise).
- Reddit threads, forum posts, community discussions showing repeated
  friction patterns.

Every finding must be verifiable. If you can't point to a URL, a screenshot,
or a direct quote, it's framework-inferred and doesn't count. Framework
reasoning is useful for generating hypotheses; structural evidence is what
survives the artifact.

---

## Phase 5 — Reframe Architecturally

Name the **system-level constraint**, not a feature. Frame as opportunity,
not criticism. The standard to hit: they can disagree with your thesis but
not dispute your evidence.

Draft at three altitudes before writing the full artifact:

1. **One sentence** — the business impact (from Phase 1, now refined)
2. **One paragraph** — the structural finding + why now
3. **One section** — the technical evidence with sources

Present these three altitudes to the user with `ask_user_input` before
building the full artifact. This is the last cheap checkpoint — rewriting
a full Minto pyramid is expensive.

---

## Phase 6 — Stress Test

Score the thesis against these seven checks. Be honest — the user needs
real signal, not encouragement.

1. **JD alignment** — Does this align with the role's scope, required
   skills, and stated mission?
2. **Non-obvious** — Score /10. Would another applicant land on this?
3. **Differentiated** — Score /10. Does this require the user's specific
   experience or usage to arrive at?
4. **Opinionated** — Score /10. Does this take a stance someone could
   disagree with?
5. **Charitable framing** — Can you explain why they haven't done this
   without implying they're incompetent? (If not, reframe.)
6. **Shippable test** — Could a PM intern design a meaningful validation
   within the role's timeframe?
7. **First-party evidence** — Does the user have screenshots, usage data,
   or personal experience that no other applicant has?
8. **Minto structure** — Does Situation → Complication → Hypothesis →
   Evidence hold together?
9. **Accurate reporting test** — Could the user describe this insight in a
   cold email without it reading as self-promotion? The tone should be
   reporting, not editorializing.

If any check scores below 5/10 or fails outright, flag it and suggest a
revision path. Use `ask_user_input` to decide whether to revise or proceed.

---

## Phase 7 — Build the Artifact

### Output Structure (Minto Pyramid)

```
# [One-line recommendation — the business impact thesis]

## The Insight
[One paragraph: structural finding + why now + why this matters
at the company's current scale]

## Supporting Evidence
### Evidence 1: [Name the signal]
[Technical or user-generated evidence with source]

### Evidence 2: [Name the signal]
[Technical or user-generated evidence with source]

### Evidence 3: [Name the signal]
[Technical or user-generated evidence with source]

## What I'd Do
[Concrete first steps: what to validate, how to test, go/no-go
criteria, and what to do if the thesis is wrong]

## Why Me
[Connect the user's specific background, transferable mental
models, and slope — not just intercept — to this problem.
What systems can they build? What levers need attention at this
company's current scale vs. later?]

## Appendix
[Raw data: screenshots, review excerpts, links, search results.
Everything a skeptical reader needs to verify claims.]
```

### Writing Guidelines

- Lead with the recommendation. A reader who stops after the first section
  should still get the core thesis.
- No hedging language ("perhaps," "it might be worth considering"). Take a
  stance.
- Every claim backed by evidence from the appendix. No orphan assertions.
- The "Why Me" section must connect to the insight — not be a generic
  resume recap. Show how the user's specific experience makes them
  uniquely positioned to execute on this thesis.
- Apply the "slope not intercept" frame: signal learning velocity,
  systems thinking, and pattern recognition across domains — not just
  years of experience in the target domain.

---

## Throughout the Process

At every phase, keep these lenses active:

- **Value add framing**: What's the user's value as an intern AND potential
  full-time hire? What systems can they build? What levers need attention
  at this company's current scale vs. later?
- **Validation plan**: How would the user validate this thesis with end
  users or buyers? What user research would they run?
- **Go/no-go criteria**: What evidence would confirm or kill the thesis
  post-hire? What's the fallback if it's a no-go?

Push back hard on anything that is:
- Generic (any applicant could say this)
- Restating their existing strategy (visible on their blog or pricing page)
- Framework-only (sounds smart but has no structural evidence)
- Feature-level instead of system-level

Dead hypotheses are progress. Keep going until you land on something worth
building.
