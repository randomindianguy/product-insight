# Building the AI system

Reference. Consult while building, not after.

## Architecture

**Context engineering priority**, ordered by cost of error times frequency of use: system prompt, evaluations, safety and alignment, dataset engineering, RAG, reasoning, tools, memory, fine-tuning last. Evals sit near the top. The things people reach for first sit near the bottom.

**Data model before UI.** The data model is often the insight. Two quantities the naive version collapses into one, kept apart because they are not the same quantity, is what stops a tool from being quietly wrong.

**The trust boundary.** Code owns the math and the honesty guarantees. The model owns the visible judgment and the explanation. Prompts persuade, code enforces. Asking a model not to invent a number is a hope. A validator that rejects any figure not traceable to a tool output is a guarantee.

Two corollaries, each expensive to learn the slow way:

- Let code hand the model rich reality, never a tidy total. A tool that pre-computes the answer has erased the signal the model needed in order to judge and explain.
- Honesty has two layers. Provenance, enforced by code. Semantic accuracy, enforced by the rubric and the judge. Different guarantees, different mechanisms.

**Decision sequence.** Prompt engineering costs hours. Examples cost a day. RAG costs weeks. Fine-tuning costs months. Marginal ROI falls at every step. A day of testing beats weeks of unknowns.

## Agentic design

**Know the level.** Code, LLM call, chain, router, state machine, autonomous. A cycle is the necessary condition for calling something an agent. Three through five are agentic. Using these words loosely in front of an engineer on a panel is expensive.

**Stakes choose autonomy.** High stakes keep a human in the loop. *I am at Sheridan Level 5, here is what Level 6 would require, here is the condition under which I would move* is a roadmap answer most candidates cannot give. It is a decision with a reason.

**Add machinery in response to an observed failure.** Choosing the boring single loop and naming the exact condition that would change your mind is the demonstration. Multi-agent chosen for sophistication is the tell of someone who has not shipped one.

Reflection cannot be misused by a user. Tool calls can, so tools carry safety instructions. A reflection bar set too high produces an agent that never outputs.

## Data

Quality, diversity, quantity, in that order. A small clean set beats a large dirty one.

**Hand-author the golden set before the system exists**, so nothing biases it toward whatever got built. Triangulate. Disagreement on the golden set runs near zero.

When it doesn't, keep the disagreements. The thorniest cases carry the highest disagreement, and deleting them destroys diversity. Work out whether the disagreement is laziness, a mistake, or real ambiguity. Resolving real ambiguity is the product work.

**Synthetic data is correct here, not a compromise.** Scoring needs known ground truth and real data does not supply it. Template mutation is the right tool in a low-risk domain. Disclose it plainly and move on.

Build mutations as **pairs**: identical on the surface, one decisive fact differs, opposite correct answer. A system matching the surface cannot get both. That is what turns *it passed* into *it did not memorise.*

## Evaluations

> Your evals are your north star.

The depth is in rubric design, edge coverage, and disagreement resolution. This is the stage that separates the user from everyone else applying, because almost nobody shows it.

Six steps, each gating the next:

1. **Test dataset.** Diverse scenarios, edge cases, varying difficulty.
2. **Baseline.** Run v1.
3. **Vibe-check.** Read ten samples by hand before anything scores anything.
4. **Rubric.** Binary verdicts with written rationale. A 7.5 out of 10 hides which cases broke and cannot be handed to a third person without their vibe check replacing yours. Refine until two independent evaluators disagree under 10% of the time.
5. **Cutoffs, written down before the run.**
6. **Log and iterate.**

**Two disagreement thresholds, different jobs.** Rubric disagreement under 10%, and when it runs higher the instructions were unclear rather than the people careless. Golden set disagreement near zero. Conflating them is common and expensive.

**Validate the grader.** A grader you have not checked is a ruler you have not measured. Agreement with hand labels, then stability across repeated runs. Then it may score.

**Three approaches together.** Human evals build the golden set. Code evals hard-gate the objective failures: a fabricated number fails automatically, no model involved. LLM-as-judge decides intent, and the judge is the most sophisticated model available. An LLM judging an LLM works only when the judge is the smartest one in the building.

**For agents:** decompose the workflow, build a step evaluator per decision point, aggregate to a system metric. Report the aggregate. Work on the steps.

## Scope containment

Alignment comes from containing the scope of the product. A chatbot on a laptop vendor's site discusses that vendor's laptops, and ten test cases are off-topic prompts that all get deflected.

Restraint expressed as product behaviour **is** scope containment. Stay-silent cases in the eval set, refusal to put a number on an unresolved input, precision weighted over recall. This is the bet from `/thesis` expressed in the system, which is what coherence looks like.

**Reward function alignment is a decision.** Precision over recall, because the failure that ends the trust is the fifth false alarm, the same way developers mute a noisy code reviewer. State the choice and the reason. The eval then holds you to it.

**Trust markers** on an artifact: every number traceable, the caveat before the metrics, the reader invited to check.
