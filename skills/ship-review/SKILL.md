---
name: ship-review
description: Get a finished hire-me artifact read by the people who hire. Use when the user has built something for a job application and needs to write it up, distribute it, and test it on a real reader.
---

# Ship Review

The artifact has **two customers**: the fictional user inside it, and the hiring manager reading it. Portfolio work serves the first beautifully and never notices the second. The second one hires you. Where they conflict, the reader wins.

This is where good work dies unread. Watch for polish standing in for distribution.

## Step 1 — Clear the floor, then stop polishing

For AI, MVP is minimum viable **performance**. You never reach 100%, so the floor gets named in advance and the thing ships when it clears.

The floor is also a **ceiling**. Past it, polish is procrastination with a text editor.

Past the threshold, the only live question is whether the next dollar buys anything. Coverage across many cases at one pass beats repetition on fewer cases inside a fixed budget. That is an inference-cost trade-off made deliberately, and saying so demonstrates the judgment the reader is hiring for.

State the honest limit **before** the metrics. *Single pass, so read this as a credible preliminary result rather than a production number.* Then the suspicion is dead and the numbers land clean.

**Done when:** the floor was named before the run, and the result cleared it.

## Step 2 — Attach every claim

Run the `claims` skill over the write-up. Every load-bearing sentence gets visible, checkable, and voiced as the user's decision.

**Done when:** `claims` passes.

## Step 3 — Make the interaction impossible to fake

Could someone fake this interaction with no eval, no dataset, no mutations? Then it proves nothing about the user's engineering.

A caption asserting rigour is an assertion, and the artifact refuses assertions. Instead, let the reader **lose the exact discrimination the eval was built to pass**, then show the system passing it at scale. Their failure becomes the reason the mutations exist, and the interaction is drawn from the eval rather than a claim about it.

Designing that interaction → [READER.md](READER.md).

**Done when:** removing the underlying work would break the interaction.

## Step 4 — Write it up

Short. It points at the thing.

```
# [One line: what was built and what it revealed]

## What I built
[Two or three sentences. Link the repo, the deployed URL, the
dataset, the transcripts. A pointer, not a description.]

## What it revealed
[One paragraph: the finding, whose problem it is, the constraint
holding it in place, why now. Lead with the finding, including
when the finding is that the thesis was wrong.]

## How to check me
[What a skeptic needs to reproduce it. Sources, method, sample
size, the honest limit, what more access would buy.]

## What I'd do next
[Short. Go/no-go criteria and the evidence that would kill the
thesis. Allowed to be a plan, because it is anchored to something
that already exists.]
```

The build is the why-me, so there is no Why Me section. Where the user wants one, every claim in it opens in a browser.

Lead with what exists. Take a stance. Write in the tone of a lab notebook. When the build killed the thesis, that goes in the first paragraph, because it is the strongest available move and most applicants will not make it.

**Done when:** a stranger reading only the first line knows what exists.

## Step 5 — Name ten people

GTM is being part of the conversations your users already have. Here that means the cold pitch, the referral, the post, the DM.

Finishing the substance leaves distribution untouched. About ten specific people need to see this and none of them will find it alone.

**Done when:** ten names exist, with a channel next to each.

## Step 6 — Send it to one human

*I didn't feel good about using the product* is the first cardinal sin a PM commits. The verdict here — when they lose, do they think smart tool or smart builder? — is a perception, and perceptions live in readers.

Async, so engineer the reaction into the ask:

> Look at only the first card. Before you scroll, reply with one word: flag it, or leave it?

Then, once they have been through it:

> When you made that call, did you add up the numbers, or was it a gut read?
> What is your honest takeaway about the person who built this?

The first recovers whether the judgment was real or trivial. The second is the whole thesis, asked open, with no word planted. Aim a critic at the target — *where does it lose you* — and let them find the verdict themselves.

A misread is the finding. Record it. The real reader will not be sitting next to the user.

**Done when:** one human's unprompted reaction is written down.
