# product-insight

A Claude skill that generates differentiated, evidence-backed product insights for PM job applications.

You paste a JD. The skill systematically generates hypotheses, kills the generic ones, finds structural evidence, and outputs a Minto-pyramid artifact — the kind a hiring PM reads in 30 seconds and thinks "this person actually used the product."

---

## The Problem

Most PM application artifacts fall into one of two traps:

1. **Restating strategy** — "You should invest in AI features." They know. It's on their roadmap.
2. **Framework cosplay** — RICE scores and TAM estimates that any applicant with a blog subscription could produce.

Neither signals how you think. Neither requires having used the product. Neither is differentiated.

## What This Skill Does

It runs a structured process to find the gap between what a company *says* and what their product *does* — then builds an artifact around that gap with verifiable evidence.

The process:

1. **Altitude check** — Frame the insight as business impact before going deep. Most artifacts fail at altitude, not depth.
2. **Hypothesize and kill** — Generate a thesis from your own product usage, then try to destroy it. Search their changelog, pricing page, blog, investor materials. If the company already uses your words, it's dead. Move on.
3. **Re-derive from JD tensions** — Read the JD line by line for mission-product gaps, positioning contradictions, and growth-investment mismatches. JDs leak strategy.
4. **Narrow with structural evidence** — API docs, support pages, app store reviews, Reddit threads. If you can't link to it, it doesn't count.
5. **Reframe architecturally** — Name the system-level constraint, not a feature. Frame as opportunity, not criticism.
6. **Stress test** — Score for non-obvious, differentiated, opinionated (/10 each). Check if you can explain why they haven't done it without calling them stupid.
7. **Build the artifact** — Minto pyramid: recommendation → evidence → what you'd do → why you.

Dead hypotheses are progress, not failure. The skill logs them and keeps going.

## Philosophy

Based on [hire for slope, not y-intercept](https://mattrickard.com/hire-slope-not-intercept). The artifact should demonstrate how you think — learning velocity, systems thinking, pattern recognition across domains — not years of domain experience.

---

## Install

1. Download `product-insight.skill` from [Releases](../../releases)
2. Open a Claude Project
3. Drop the `.skill` file into the project files

That's it. The skill triggers automatically when you start working on a PM application artifact.

## Usage

Start a conversation in the project with something like:

```
Applying to Ramp for Growth PM.
JD: [paste]
Product: Corporate card and spend management platform.
My usage: [describe how you use it + screenshots]
External sources: App store reviews, G2 reviews, their Year in Review blog post.
```

The skill walks you through each phase, uses interactive checkpoints to get your input at decision points, and outputs the final Minto-pyramid artifact.

### Trigger Phrases

The skill also fires on:
- "product insight for [company]"
- "application artifact"
- "cold outreach insight"
- "PM portfolio piece"
- "hire me artifact"
- Sharing a JD and asking for a differentiated angle

## Output

A Minto-pyramid structured artifact:

```
# [One-line business impact thesis]

## The Insight
Structural finding + why now + why at this company's current scale

## Supporting Evidence
Verifiable signals from docs, reviews, forums, usage

## What I'd Do
Validation plan, go/no-go criteria, fallback if wrong

## Why Me
Specific background → this problem (slope, not intercept)

## Appendix
Screenshots, links, raw data — everything to verify claims
```

## Example Dead Hypotheses (This Is Normal)

The skill will kill most of your initial ideas. That's the point. A typical run might look like:

- ❌ "Ramp should add budget forecasting" — they shipped it 3 months ago. Dead.
- ❌ "Ramp needs better receipt scanning" — it's in their marketing copy. Dead.
- ❌ "Ramp should integrate with more ERPs" — 14 integrations listed on their site. Dead.
- ✅ "Ramp's activation model assumes a top-down buyer, but their fastest-growing segment is bottom-up..." — not in their blog, not on their pricing page, supported by app store reviews and support forum patterns. Alive.

## Customization

The skill lives in `SKILL.md`. You can edit it to:

- Adjust stress test thresholds (default: flag anything below 5/10)
- Add company-specific research sources
- Modify the output structure
- Change the kill test criteria

## Who This Is For

PMs applying to roles where the application is a performance, not a form — where showing how you think matters more than listing where you've worked.

Especially useful if you're switching domains (e.g., EdTech → fintech) and need to prove you can generate novel insight without prior industry experience. The skill is designed to surface transferable mental models and first-party evidence that domain outsiders uniquely have.

## License

MIT
