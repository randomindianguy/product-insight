# How to use these skills — Ramp run

Two surfaces. Claude Code is the one that works properly. Claude chat works with one manual workaround. Both are below.

---

## A. Claude Code (recommended)

### One-time install

1. Download the `product-insight` folder (the whole thing, not just a zip).
2. In a terminal, from inside that folder:

   ```bash
   chmod +x install.sh && ./install.sh
   ```

   This copies the five skills into `~/.claude/skills/`, so they exist in every project on your machine. You should see:

   ```
   installed product-insight
   installed thesis
   installed artifact
   installed claims
   installed ship-review
   ```

3. If `~/.claude/skills/` did not already exist, quit and reopen Claude Code once so it starts watching the folder. After that, edits to the skill files take effect live with no restart.

To confirm it worked, open Claude Code anywhere and type `/` — you should see `thesis`, `artifact`, `claims`, `ship-review`, `product-insight` in the list.

### The Ramp run

The `/clear` between sessions is not optional. It is the mechanism. A fresh context window is what stops the model from remembering the write-up template while it is supposed to be building. If you skip the clears, you get a memo.

**Setup.**

```bash
mkdir ~/scratch/ramp-vendor-intel && cd ~/scratch/ramp-vendor-intel
```

Save the Vendor Intelligence & Marketplace JD as `jd.md` in that folder. If a written prediction predates your Lookout eval run, drop that file in too, and note where it is.

```bash
claude
```

**Session 1 — thesis.**

Type:

```
/thesis

The JD is in jd.md. This is a product-level role — they hand me the Problem and most of the Solution, so the artifact demonstrates I can make their pipeline work, it does not propose what to build.

Lookout exists and is off the table for the thesis. It's a receipt I'll cite later, not the thing this thesis is retrofitted onto.

The obvious thesis is the benchmark-vs-marketplace adversarial tension. Kill it as too obvious unless it survives Step 2. Push toward the extraction pipeline: they see $200B of spend and can't read the PDFs.
```

It will extract the bar, kill hypotheses, make you name a segment, gather receipts, name the constraint, audit your transferred models, score Delta-4, and name the bet. It ends **without** a document. That is correct. Do not ask it for a write-up here.

```
/clear
```

**Session 2 — artifact.**

```
/artifact
```

It reads the thesis output from the folder, proposes one thing to build with an hour estimate, and asks you to confirm. The proposal it should land on: extract SKU-level pricing from ~100 public GSA / FPDS contract PDFs, hand-authored golden set first, binary rubric, report the coverage-vs-accuracy boundary. Confirm or redirect. Then it builds. It ends when the build **ran** and produced a result — including a negative one, like "the PDFs only contain totals, not line items," which is itself a finding.

```
/clear
```

**Session 3 — ship-review.**

```
/ship-review
```

Now the write-up appears. It will run `/claims` over every sentence, make the interaction impossible to fake, produce the four-section write-up, make you name ten people, and end by handing you the two questions to send one human.

### Using `/claims` on its own

You do not need the full flow to use this one. Any time you are writing a sentence about something you built — a resume bullet, the Claire Peracchio referral packet, a LinkedIn post — open Claude Code in that folder and type:

```
/claims

Here are the Precisely and upGrad proof points from my referral packet: [paste]
```

It tells you which sentences are detachable (true of the work, not of you) and rewrites them to name you as the actor.

---

## B. Claude chat (claude.ai)

Skills work here but slash-command routing between them is unreliable, so you run each one manually. Same discipline, more copy-paste.

### One-time install

1. Settings → Features → make sure code execution is on (needed for skills).
2. Upload each zip as its own custom skill: `thesis.zip`, `artifact.zip`, `claims.zip`, `ship-review.zip`. You can skip `product-insight.zip` — the orchestrator only matters when slash commands chain, which they don't here.

### The Ramp run

Chat has no `/clear` that wipes context mid-conversation, and that is the whole problem: the model can see the write-up template the entire time. The workaround is **one fresh conversation per act**. Three separate chats.

**Chat 1 — thesis.** Start a new conversation. Paste the JD, then:

```
Use the thesis skill.

Product-level role, they hand me Problem and Solution. Lookout is off the table for the thesis — it's a receipt to cite, not the thing to retrofit onto. Kill the benchmark-vs-marketplace tension as too obvious. Push toward the extraction pipeline.
```

Work through it. When it reaches the bet, copy the whole output into a note. Then **close the conversation.**

**Chat 2 — artifact.** New conversation. Paste the thesis output you saved, then:

```
Use the artifact skill. Here's the thesis from the previous session: [paste]
```

It proposes the build. Because chat can't run long builds against your filesystem, this is where the surface differs from Code: it will design the eval harness and golden-set structure, but you run the actual extraction locally. Bring the result back. Save the output. Close the conversation.

**Chat 3 — ship-review.** New conversation. Paste what exists — the thesis, the build result, links — then:

```
Use the ship-review skill. Thesis and build result: [paste]
```

Write-up, claims pass, ten names, the two questions.

### Why Code is better here

The chat version works but you are hand-carrying context between three conversations and running the build yourself. In Code, the folder *is* the shared context — each session reads what the last one wrote to disk — and `/artifact` can run the extraction in the same session it designed it. You use Code daily anyway. Use Code.

---

## The one rule, either surface

The write-up is the last thing, and it only exists after something ran. If at any point you find yourself with a document about Ramp and no build behind it, you have a plan, and a plan about a company cannot be wrong at the moment you send it, which is why it carries no signal. Stop, and go build the receipt.
