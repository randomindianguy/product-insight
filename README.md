# product-insight

Skills for getting hired as a PM by building something instead of describing something.

```
npx skills@latest add randomindianguy/product-insight
```

## Why

A hiring manager is pricing the risk of your future decisions. Their only evidence is your past ones.

An interview samples those decisions under a clock, through words, and the sample can be rehearsed. A **receipt** — something you built, that ran, that a skeptic can reproduce — samples them at leisure and cannot be faked.

These skills are the same test as the interview, run with a better instrument.

## The flow

Three sessions, in order, each in a fresh context window.

| | |
|---|---|
| **`/thesis`** | Find a claim about the company that survives being killed. Extract their bar, kill your first two hypotheses, name a segment, gather receipts, name the constraint holding the problem in place, audit the models you carried from your last domain, name the bet, then stress-test it and name the one claim it dies without. |
| **`/artifact`** | Build the receipt that tests the claim. Ends when it ran, positive or negative. |
| **`/ship-review`** | Make the interaction impossible to fake, write it up, name ten people, send it to one human. |

`/claims` sits underneath. It tests whether a sentence about your own work is visible, checkable, and attached to you. `/ship-review` reaches for it, and you can run it alone on a resume bullet or a cold email.

`/thesis`, `/artifact`, `/claims`, and `/ship-review` are model-invoked, so the agent can reach them on its own and each works standalone. `/product-insight` is user-invoked and orchestrates the flow.

> **Note:** `/thesis`'s research phase is token-heavy; on smaller plans, expect to hit limits mid-run. Consider running `/thesis` in a fresh session, or narrowing the research scope.

## The one rule the structure enforces

The write-up lives in `/ship-review`, unreachable until `/artifact` has produced a result.

This is deliberate. When the template is visible from the first session, the agent races toward it and hands you a memo. A memo about a company is a plan, and a plan cannot be wrong at the moment you send it, which is why it carries no information. Keeping the write-up out of view is what makes the build happen.

## Reference files

- `skills/artifact/EVALS.md` — architecture, agentic levels, golden datasets, rubric design, scope containment. Loaded only when the artifact is an AI system.
- `skills/ship-review/READER.md` — reader segmentation, the aha, the bet, voice, and the two poisons. Loaded only when the artifact has a surface someone moves through.

## Vocabulary

- **receipt** — evidence the reader can check: a URL, a screenshot, a quote, a number they can recompute.
- **it ran** — binary state. The build produced a result, including a negative one.
- **detachable** — a claim true *of the artifact*, so anyone holding it could say it. The hiring manager can champion the work and cannot champion you.
- **wall** — the specific obstacle you hit that stopped everyone else. A principle is borrowable; a wall is not, because you had to have been in the room. The load-bearing specific that attaches a claim to you.
- **transferred model** — a mental model carried from a previous domain. Audit the condition underneath it before you trust it here.
- **the two checks** — run on a finished thesis before it ships: the counter (does the strongest objection survive?) and producibility (can you build the evidence honestly from outside?). Either can route the thesis back to the step that owns the failure.
- **the transfer test** — name the source, name the condition that made it true there, check the condition holds here; if it fails, the model may be inverted, not merely weaker. Run on the models the user carries from a previous domain.

MIT.
