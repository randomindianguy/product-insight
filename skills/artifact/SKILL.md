---
name: artifact
description: Turn a product thesis into something that runs, for a PM job application. Use when the user has a claim about a company and needs to build the receipt that tests it, or asks what to build for an application.
---

# Artifact

Turn the thesis into something that ran.

**It ran** is a binary observable state. The prototype produced output, the eval produced a score, the interviews produced transcripts. Until then there is a plan, and a plan cannot be wrong at the moment you send it, which is why it carries no information.

## Check the thesis was tested

Before anything else, confirm the thesis arrived with its four compass verdicts — North, South, East, West, each with a written reason. If it did not, the thesis skipped the test phase of `/thesis` and only *feels* strong. Do not build on it. Send it back to `/thesis` Step 6, or run the compass here before proposing anything. Building on an untested thesis is the skip completing itself, and it is the one thing this pipeline exists to stop.

If a South producibility flag arrived, carry it into the producibility gate below — it is already telling you the load-bearing output may not be buildable from outside.

## Pick the receipt

Take the structural evidence from `/thesis` and find the strongest thing the user can build inside their stated hours and access. Ranked:

1. **A working prototype** against their public API or SDK. It will fail in places. Those failures are the insight.
2. **An eval harness** run against their product, with a real case set and scored results. When the company ships an AI feature this is nearly always available and nearly never attempted.
3. **A dataset they lack**: reviews coded by failure mode, a reproducible benchmark, a competitor matrix built from actual usage.
4. **User research they haven't run**, with raw transcripts attached. Five interviews with real users of their product outweigh any memo.
5. **A design or interactive mock** of the flow the receipts indict, built until it can be clicked.

The user cannot open a PR against the company's repo. That is a fact about their repo, not about the user's ability to build.

Propose one, with an hour estimate. Ask for confirm or redirect.

**Done when:** the user has agreed to a shape and an hour budget.

## Producibility gate

Before any build begins, name the artifact's **load-bearing output** — the one number, result, or artifact the whole thing rests on. A confidence score. A precision figure. A benchmark. A transcript finding.

Then ask: can that output be produced *honestly* from what the user can actually reach? If the thesis arrived with a South flag from the compass, this is where it lands, and it is a hard gate.

The failure mode is an output that can only be produced by fabrication. If the load-bearing number needs the company's private data and the user substitutes an invented one, the artifact fabricates its own core claim, and a reviewer who knows the domain catches it on sight. That is worse than no artifact.

Two honest paths when the output is not producible against the company directly:

- **Rebuild it on data the user can legally reach.** Public datasets, the user's own usage, a comparable corpus. The output then measures the equivalent problem on real data, and the write-up names the substitution plainly.
- **Change the artifact** to one whose load-bearing output *is* producible — a different rank on the list above.

**Done when:** the load-bearing output is named, and there is a real path to producing it without fabrication.

## Branch

Building an AI system → read [EVALS.md](EVALS.md) before writing code.

Building a dataset, a research study, or a static design → skip it.

## The access hatch

Ship a document alone when the binding constraint is **access**: an enterprise sales gate, a private API, unreachable users, proprietary data.

Then name the barrier in one sentence and put that sentence in the output. A reader who sees *the API is gated behind a sales call* learns something about the candidate. A reader who sees nothing fills the gap with laziness.

Effort is not access. When the user reaches for the hatch because the build looks long, say so and return to the ranked list.

## Let the build kill the thesis

The prototype may work fine. The eval may score well. The users may not have the problem. That is a result, and it beats an untested memo.

Being wrong about something you tested is a growth story. Being wrong because you never checked is ignorance. The build is what separates them. *I thought X, I built the test, X was wrong, here is what I found instead* demonstrates the loop the job requires.

Report a killed thesis. Carry it into `/ship-review` as the finding.

## Then stop

**Done when:** the build ran and produced a result, positive or negative, that a stranger could reproduce from what exists on disk.

Hand off to `/ship-review`.
