---
name: thesis
description: Find a claim about a company that survives being killed, box it with the compass, and name the one claim it dies without, for a PM job application. Use when the user shares a JD, wants a product insight or application artifact, or asks for a differentiated angle on a company.
---

# Thesis

Find one claim about this company that is true, non-obvious, and survives its own constraints.

A **receipt** is evidence the reader can check: a URL, a screenshot, a direct quote, a number they can recompute. Framework reasoning generates claims. Receipts are what survives.

## Two phases, and the wall between them

This skill has ten steps in two phases.

**Find (Steps 1–5)** produces a claim that feels strong. **Test (Steps 6–10)** tries to break the claim that feels strong.

The failure mode of this skill is skipping the Test phase because the Find phase went well. A claim feels finished at Step 5 and momentum carries straight to the build. That is exactly backwards: a claim feeling strong is the reason to test it, not permission to skip the test. The steps that find an idea and the steps that check it are different steps, and the checking ones are the ones that catch the confident wrong answer.

So there is a hard stop at Step 5. Do not describe an artifact, propose a build, or hand off until Steps 6 through 10 have each run and reported. If you find yourself reaching for "here's what to build" before the compass has boxed the thesis, stop — that is the skip, and it is the one move this skill exists to prevent.

## How to ask

State a claim and ask for confirm-or-redirect. A question asked with no hypothesis behind it teaches you nothing, because you had no expectation for the answer to violate. You learn from the gap.

> I think the eval harness on their retrieval feature, six hours, because every receipt you have is about ranking quality. Confirm, or tell me what I'm missing?

Every assumption carries its **because**. The rationale is what makes a claim yours rather than anyone's.

When a step stalls, ask what this situation is like. Mapping a novel thing onto a known one is how the good insights arrive. Then run the analogy through Step 6, because a transferred model with a broken condition under it is worse than no analogy.

## Step 1 — Extract the bar, name the altitude

Read what they shipped: engineering blog, changelog, the bonus section of the JD, the shape of their existing features. They already decided what good means here.

Place the role on the ladder — feature, feature group, subarea, product, product line — and name which slice of PSHE it owns: Problem, Solution, How, Execution. Junior roles are handed the problem and own the solution. Senior roles are handed nothing and own the problem.

**Done when:** one sentence naming their standard, sourced to something they shipped. Plus a level and a PSHE slice, stated out loud.

## Step 2 — Kill hypotheses

Start from the user's own usage of the product. State it as a claim. Then hunt for its cause of death:

1. What shipped in the last 12 months.
2. Their pricing and feature pages.
3. Their own words — blog, investor materials, earnings calls, founder interviews. A claim they already have language for is dead.
4. Forums and support threads, for evidence it was tried and dropped.

A dead hypothesis is progress. Log it with its cause of death in one line. After two deaths, put the direction to the user.

**Done when:** two or more logged deaths, and one surviving claim naming a gap between what the company says and what the product does.

## Step 3 — Name the segment

A problem with no owner is an observation. A problem with a named segment behind it is a finding.

Cut on the dimension that causes the behaviour: the job they are trying to get done, what they believe, what they fear. Demographics correlate with behaviour and do not produce it. When you use a demographic cut, say what causal thing you believe it stands in for.

Cross two dimensions. Score each cell on how badly it hurts, and on whether the company's strategy says they care. Take one cell and hold it through every step below.

**Done when:** one cell, one causal dimension, and one sentence on why this company wants that cell served.

If there is no JD: the segment is the step that suffers most, because a JD is what normally anchors who the pain is for. With no JD you are inferring the segment from market structure, and inference caps at Reasoned — it will rarely reach Verified without a real user-pain quote. Flag this honestly at the keystone step, and if the segment is load-bearing, a lightweight search for user-pain evidence (forums, reviews, community threads) is what lifts it from guess to confirmed.

## Step 4 — Gather receipts

**Technical.** API docs, developer docs, and integration pages reveal what the system cannot cheaply do. Support pages reveal pain the company has documented and not solved.

**User-generated.** App store reviews at two and three stars, specific enough to be useful and not angry enough to be noise. Forum threads showing the same friction twice.

**Done when:** every claim in the thesis points at a URL, a screenshot, or a direct quote. Count them.

## Step 5 — Name the constraint

The company is competent and has not overlooked this. Something holds the fix in place. Find it, or hypothesize it and say you are hypothesizing.

Look at cost per call, latency budgets, which team would own it and whether that team exists, enterprise contracts and data residency, what the sales motion tolerates, what the API shape says is expensive to change, and whether they simply decided against it.

Then answer in one sentence: why has a competent team not done this yet?

This is the company's wall: the specific obstacle that stopped them. It runs in both directions. Here it proves the thesis is real — a claim with no wall in front of it is a claim the company would have already acted on. Later, in `claims`, the same question turns on the user: what obstacle did you hit that nobody else could, and finding it is what makes the write-up yours rather than borrowable.

If the only available answer implies incompetence, the claim is wrong. Return to Step 2.

**Done when:** one sentence, charitable and specific, and it survives the user reading it aloud.

**HARD STOP.** The claim now feels strong. That feeling is the signal to test it, not to build on it. Steps 6–10 are the test. Do not propose an artifact or hand off until all four have run and reported. If the next thing you want to write is "here's what to build," you are about to skip the test — go to Step 6 instead.

## Step 6 — Audit the transferred models

The user carries mental models from their old domain. Those models are why they can see anything, and they are the likeliest source of a confident wrong answer. Move fast and break things was correct at early Facebook and catastrophic in fintech. The failure hides because the transferred model arrives with the confidence it earned somewhere else.

Read `PROFILE.md` first (and `PROFILE.local.md` if present). It names the user's prior domains, the conditions that made their instincts true there, and the specific models they reach for. Without it, this step audits your own reasoning — which is honest but audits the wrong thing, since the point is to catch the user's imported reflexes, not yours.

If no `PROFILE.md` exists, this is almost always a first-time user. Do not silently run degraded. Pause once and offer the setup:

> Step 6 audits the mental models you're importing from your prior domain — the ones most likely to be confidently wrong in a new one. I can do this much better if you tell me where you're coming from. There's a `PROFILE.template.md` in the repo: copy it to `PROFILE.md`, fill in your prior domain and the conditions that made your instincts true there, and I'll audit against it. Want to set that up now, or run this once without it?

If they set it up, read it and proceed. If they decline, audit what you can from the conversation, and say plainly that the inward test ran degraded and will improve once the profile exists. Either way, do not nag again in the same session.

This step runs the transfer test, inward — on models the user carries. Step 9 (West) runs the same test outward, on solutions other companies used. The test is one thing:

Name the source. Name the condition underneath that made it true there. Cite whether that condition holds here. When it fails, treat the model as possibly inverted, not merely weaker.

Run it inward now, early, so a bad import gets caught before the thesis is built around it. For each model in the profile that the thesis leans on:

1. Name the model.
2. Name the condition underneath it that made it true in the old domain. Not the model. The condition. Cheap reversibility. Low regulatory exposure. A user who tolerated a broken build.
3. Cite something that shows whether that condition holds here.
4. When the condition fails, treat the model as possibly inverted, not merely weaker.

If `PROFILE.local.md` names a failure pattern this thesis is walking into, surface it as a warning to check — never as a verdict about the user.

**Done when:** every model the thesis leans on has been checked against the profile, with its condition named and tested against a citation. If the profile was absent, that is stated.

## Step 7 — Score Delta-4

The reader's alternative is a resume plus a referral. That is how they solve this problem today. Score both on: do I believe this person can do the job?

A resume scores about 3. The artifact has to clear 7.

Below a delta of 4, return to Step 2. Most portfolio work lands at 5, slightly better than a resume, and nobody changes behaviour for two points.

Four sources of differentiation are closed to a job applicant: product value, distribution, proprietary data, regulatory approval. Novelty is the only lever. So the novelty lives in the approach. Not nobody thought of a finance agent. Rather nobody shows you the evaluation.

Be maximally picky here and satisfice on polish later.

**Done when:** a number, said out loud, at 4 or above.

## Step 8 — Name the bet

One sentence. Every build decision traces back to it, the way Southwest's single aircraft type and point-to-point routes trace back to one strategy. The decisions are visible to the reader, and their coherence is the signal.

**Done when:** the user confirms the bet.

## Step 9 — Box it: the compass

The thesis now exists — claim, wall, segment, bet. The compass is the second signal: a check on the finished thesis, run to see whether it has merit. It earns its place only by being able to disagree with everything above it. Each direction can kill or redirect a thesis that passed every earlier step.

Box the thesis in four directions. A direction that fails does not just flash red — it routes to the step that owns the failure.

**North — the theme.** What theme does this thesis live under, in one word or phrase? Then the conditioned question: whose job does that theme serve? If the honest theme is the user's own skill (calibration, eval rigour, the thing I can already do) rather than the company's problem (their benchmark credibility), the thesis is aimed at the user's JTBD, not the customer's. Your job and their job must map, or the thesis solves the wrong problem however well it is built. → Fails when the theme names the user's capability instead of the company's problem. Routes to Step 3 — the segment was cut on what the user can do, not on who hurts.

**South — where it leads.** Trace the idea to its destination. If it worked, what would the user hand the reader? Then the conditioned question: can that outcome actually be produced from outside the company? An outcome that needs the company's private data, or access the user does not have, is a South that hits a wall. A thesis can be correct and still lead somewhere unbuildable. → Fails when the destination requires data or access the user cannot get. Routes forward to the `/artifact` build gate as a producibility flag. This does not kill the thesis — the thesis may be right and merely unbuildable now — but the build cannot begin until the load-bearing outcome is shown to be producible honestly. A produced-by-fabrication outcome fails severability on sight.

**East — opposing ideas.** State the strongest idea against this thesis. Not a weak strawman — the best case a smart skeptic would make. The most dangerous form is a competing wall: the thesis named one reason the company hasn't acted, but there are usually several, and the flattering one (they chose to sit on it) is rarely the real one. If the strongest counter is they are already shipping this or their data cannot support it, that counter is the real wall and the thesis dies on it. → Fails when the strongest opposing idea survives scrutiny. Routes to Step 5 — the wall step took one answer where several fit the evidence, and picked the one that flattered the build.

**West — similar ideas.** What known situation does this thesis resemble? Pull the nearest analogy — another company that faced a problem like this one. The analogy is a thinking aid, and it carries a caution: a solution that worked at another company, at another stage, may break at this one. So run the transfer test outward (the same test Step 6 runs inward): name the analogous solution, name the condition that made it work there, check whether that condition holds at the target. Separately, check the analogy is not a cliché — if the nearest neighbor is something every applicant already says, the thesis is borrowable and proves nothing.

The more load-bearing the analogy, the harder the transfer test. If the analogy IS the thesis — if the whole reframe rests on "this is like when Company X did Y" — then a fast "condition holds" is a failure of this step, not a pass. Press it. Name the precise condition, and check it holds in precise form, not roughly. An analogy carrying the thesis that gets waved through is the compass rubber-stamping its own most important direction. → Fails when the analogy's success condition does not hold at the target (note the broken condition, the thesis may still stand on its own legs) or the nearest neighbor is a cliché everyone borrows (routes to Step 2 — the thesis is generic).

**Done when:** each of the four directions has a written verdict — PASS with the one-line reason, or FAIL with the route taken. Not "the compass looks fine." Four named verdicts, in this shape:

```
North — [theme]: PASS/FAIL — [whose job it serves / routed to Step 3 because…]
South — [destination]: PASS/FLAG — [producible / flagged to build gate because…]
East  — [strongest counter]: PASS/FAIL — [counter defeated / routed to Step 5 because…]
West  — [nearest analogy]: PASS/FAIL — [condition transfers / cliché, routed to Step 2 because…]
```

A verdict of PASS requires stating why it passed, not just asserting it did. "East: PASS" with no defeated counter written out is the rubber-stamp, and the rubber-stamp is the skip wearing a checkmark. If you cannot write the strongest counter for East, you have not run East. The same holds for each direction: the verdict is the sentence, not the label.

Only after all four verdicts are written, and every FAIL has been routed and resolved, does the thesis leave this skill.

## Step 10 — The keystone

The compass tests the thesis from four sides. This step finds the one brick that, pulled out, collapses the whole thing — and checks whether that brick is actually load-bearing-solid or just assumed.

Every thesis rests on a single most-load-bearing claim: the keystone. Remove it and the thesis is not weakened, it is gone. Name it in one sentence.

The failure this step exists to catch: a thesis caveats the claim anyone would question and stays silent on the keystone — because the keystone feels so obviously true to whoever built the thesis that it never occurs to them to check it. The confident-feeling claim is the dangerous one precisely because its confidence is unexamined.

Two kinds of keystone, and the second is the one that hides:

* A load-bearing fact. "Their API can't do X." "This regulation says Y." "The company hasn't shipped Z." These feel like facts and often haven't been verified — they were asserted from what felt true.
* A load-bearing specific. Not a fact but a choice: the exact segment, the exact mechanism, the exact framing the thesis narrowed to. "It's SNFs specifically, because of staffing ratios." "It's the retrieval feature, not search generally." A specific this precise is the likeliest place the thesis reasoned backward from a conclusion, and it rarely gets flagged because it doesn't look like a claim — it looks like precision.

So, two questions, answered in writing:

1. What is the keystone? The one claim the thesis dies without. If two compete, name both.
2. How verified is it, really? Rate it:
   * **Verified** — checked against a real source, cited above. Say which receipt.
   * **Assumed** — believed true, feels true, not actually checked. Most keystones are secretly this.
   * **Reasoned** — argued from structure, not measured. Valid, but it's an inference, not a fact, and it should travel labeled as one.

If the keystone is Verified, the thesis ships strong. If it is Assumed or Reasoned, the thesis ships conditional: it is only as strong as that one unverified claim, and the write-up must say so in its first lines. "This thesis rests on X; I have not confirmed X; if X is false the thesis becomes [what it degrades to]." A reader who sees the keystone named and rated trusts the whole more, not less — the same way naming the wall earns the claim.

Then check the second kind specifically: look back at the compass and Step 3. Did any direction pass on a specific you never flagged? The segment you narrowed to, the mechanism you named — if it's precise and it went unquestioned, it is a candidate keystone hiding as precision. Rate it too.

**Done when:** the keystone is named in one sentence and rated Verified / Assumed / Reasoned. If Assumed or Reasoned, the degrade-to sentence is written — what the thesis becomes if the keystone is false. The thesis ships strong only if the keystone is Verified; otherwise it ships conditional, and the rating travels to the handoff.

## Plain-English summary — always end here

Everything above uses the skill's internal vocabulary: keystone, wall, compass, Delta-4, Reasoned, producibility flag. That language is for doing the work. It is not how you talk to the user about the result.

So end every run with a short plain-English summary, under a heading the user can't miss. No jargon. If a skill term is unavoidable, define it in the same sentence. Write it the way you'd explain it to a smart friend who has never heard these words. Five sentences or fewer:

1. The claim — what you think is true about this company, in one plain sentence.
2. Why it's not obvious — what most people would say instead, and why this is different.
3. How solid it is — is the core checked-and-true, or still a guess? Say which. ("The main fact is confirmed. The part about who it hurts is still a guess.")
4. The one risk — the single thing that, if wrong, sinks it, in plain words.
5. What to build — the receipt, described so a non-expert gets it.

Then one line: what a normal person should take away from all this.

This is not optional. A thesis the user can't explain back in plain words is one they can't use in a room, an email, or an interview — the only places it matters. If the user can't restate it without the jargon, the run hasn't finished.

## Then stop

Hand off to `/artifact`, carrying the four compass verdicts, any South producibility flag, and the keystone with its rating. The thesis is not the deliverable and does not get written up here.

The compass verdicts and the keystone rating travel with the thesis. `/artifact` will not begin a build for a thesis that arrives without them, because a thesis that skipped the compass or never named its keystone is a claim that only feels strong, and building on it is the skip completing itself. If the keystone is Assumed, verifying it is the first task in `/artifact` — before any build, confirm the one claim the thesis dies without.
