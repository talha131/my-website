# Project Context for Claude

This file gives you everything you need to work with this project from the start. Read it fully before doing anything.

---

## Who You Are Working With

Talha is a university professor in Karachi, Pakistan. He teaches ICT (Information and Communication Technology) to B.Ed. students - future primary-to-secondary school teachers. He is knowledgeable, moves fast, and does not need things explained back to him. Keep responses short and direct.

---

## The Project

This is a Hugo static site (content repository). The folder contains Canva infographic assignment files for Talha's students.

- Files are named `assignment-infographics-NNN.md` (001 through 160)
- Each file is one assignment asking students to create an infographic in Canva
- `_index.md` is the section index - do not modify it unless asked
- SWOT files (`*swot*.md`) are a separate assignment type - do not touch them unless asked
- `Anti-AI Writing Style.md` is the writing guide - read it before editing any assignment file
- `assignments.csv` - full index of all assignments with hugo_title, descriptive_title, link, topic_complexity, and infographic_type_complexity (scale 1-4)

---

## The Students

B.Ed. students at a university in Karachi, Pakistan. Mostly Muslim, some Christian. They are training to become teachers at the primary-to-secondary level. Assignments should be relevant to their lives and future classrooms. Pakistani context matters (local examples, local landmarks, local relevance).

---

## Hugo Frontmatter Rules

Every assignment file has YAML frontmatter. Rules:

- Keep `title`, `slug`, `weight`, and `linktitle` (if present) exactly as-is
- `description` must be unique and specific to that file's topic and task. State what the student builds and what it covers. Max 2 sentences. No generic phrases like "an assignment about..."
- The Hugo shortcode `{{< callout type="info" >}}...{{< /callout >}}` appears at the top of every file - preserve it exactly

---

## Writing Rules (Anti-AI Style)

The full guide is in `Anti-AI Writing Style.md`. Key rules to apply to every file:

**Remove these words entirely or replace with plain alternatives:**
Additionally, Crucial, Delve, Highlight, Underscore, Enhance, Foster, Pivotal, Showcase, Intricate, Landscape, Testament, Vibrant, Valuable, Meticulous, Align with, Bolster, Garner, Enduring

**Replace fancy verbs:**
- "serves as" → "is"
- "features" → "has"
- "offers" → "has"
- "boasts" → "has"
- "represents" → "is" (unless describing icon choices in design instructions)

**No em dashes (—) anywhere.** Replace with a colon or hyphen.

**Cut these sentence types entirely:**
- Vague importance: "pivotal moment", "lasting legacy", "testament to", "shaping the future of"
- Broader impact filler: "contributes to the wider conversation", "reflects broader trends"
- Forced "Challenges & Future Outlook" conclusions
- Vague authority: "Experts argue...", "Widely recognized as..." - if you cannot name the source, delete the sentence

**Do not add content just to expand a sparse file.** If a file is short, keep it short.

---

## Tool References

Only Canva. No Draw.io, Piktochart, Venngage, or any other tool. If you see any other tool referenced, replace it with Canva.

---

## Special File Types to Handle With Care

**Markov Process files (007-011):** These have complex node/state diagrams with weighted transitions. The diagram data (nodes, states, probabilities) is content the students need. Keep all of it intact. Only clean the surrounding language.

**Tree diagram files (001-006):** Hierarchical node structures. Keep the node data intact.

**Quranic / Prophet story files (012-016):** Religious content. Keep it as-is. Do not soften, omit, or reframe it.

---

## How Talha Likes to Work

- He thinks out loud and gives instructions via voice-to-text. Expect informal phrasing and run-on sentences.
- He does not want things summarized back to him after the fact. Just do the work.
- He gives high-level direction and trusts you to handle details. If something is ambiguous, make a reasonable decision and note it briefly.
- He moves fast. Use parallel tool calls and background agents wherever possible.
- He will sometimes give feedback mid-task. Apply it immediately and continue.
- Do not ask clarifying questions unless truly blocked. Make the best call and proceed.

---

## What Has Been Done So Far

As of March 2026:
- All 160 assignment files (001-160) exist and follow the Anti-AI style guide
- All files use Canva only
- All files have unique, specific frontmatter descriptions
- `assignments.csv` is the full assignment index with titles, links, and difficulty ratings

---

## assignments.csv - How It Was Built

The file has six columns: `filename`, `hugo_title`, `descriptive_title`, `link`, `topic_complexity`, `infographic_type_complexity`.

**topic_complexity (1-4):**
Measures how much subject knowledge a student needs to understand and organize the content.
- 1: No prior knowledge needed. Everyday topics anyone can handle (e.g., how to cross the road, brushing teeth, making a sandwich).
- 2: Familiar topics with some structure (e.g., food preservation, basic Islamic practices, simple grammar rules).
- 3: Topics requiring subject knowledge (e.g., Prophet stories, Pakistan Movement, science concepts like sound waves or the water cycle).
- 4: Complex or specialist topics that require synthesis or deep understanding (e.g., Political history of Pakistan, Bloom's Taxonomy applied to lesson design, Narration/indirect speech rules).

For assignments 001-074, a student peer reviewer provided Easy/Medium/Hard ratings. Where her ratings disagreed with the original ratings, her feedback was preferred for the topic dimension (she is closer to the student experience). The five disagreement groups were: movie assignments 051-057 (she said Hard, we said Easy - she was right, open-ended narrative tasks are harder than the topic suggests), Prophet stories 014-016 (Hard, not Medium), Smartphones timeline 017 (Easy, not Hard), Self-care checklist 027 (Medium, not Very Easy), Moon phases and Solar eclipses 060-061 (Easy, not Hard).

**infographic_type_complexity (1-4):**
Measures how structurally demanding the infographic format is, independent of topic difficulty.
- 1: Simple formats. Tips lists, checklists, basic step-by-step sequences (e.g., water conservation tips, how to make a sandwich).
- 2: Standard formats. Labeled diagrams, comparison panels, basic flowcharts, simple timelines (e.g., career path tree, comparison of formal vs informal email).
- 3: Structured formats. Concept maps with multiple nodes and connections, detailed timelines with phases, journey narrative infographics, fishbone diagrams, Sankey-style flows (e.g., the journey of sound through the ear, causes of air pollution in Karachi).
- 4: Complex formats. Markov process diagrams with weighted transitions, multi-branch decision trees, detailed Sankey diagrams (e.g., assignments 007-011 which have node/state data the student must map accurately).

When adding a new assignment, rate both dimensions separately and add a row to assignments.csv.

---

## The "Self-Contained Narrative" Rule

An infographic is not a labeled diagram. A labeled diagram names parts. An infographic tells a story: it explains why something works the way it does, connects cause to effect, and gives the reader something they could not get from a textbook illustration alone.

**When to add a "A Note on What Makes This an Infographic" section:**
Add this section near the top of the file (after the callout shortcode) for any assignment where a student's natural instinct would be to produce a labeled diagram instead of an explanation. This includes:
- Biology and anatomy topics (cells, sense organs, body systems)
- Physics and chemistry diagrams (atoms, circuits, waves)
- Cycle diagrams (water cycle, life cycles, nitrogen cycle)
- Any topic where students have seen a textbook diagram version since childhood

The section should:
1. Name the specific wrong approach for that topic (e.g., "Drawing four colored tongue regions labeled sweet/sour/salty/bitter is a diagram, not an infographic - and that map has been largely disproved anyway")
2. State what makes it an infographic instead (tells the full story, answers why, corrects misconceptions, connects the biology to experience)

Do not add this section to movie assignments, tips/checklist assignments, grammar assignments, or assignments where the narrative structure is already obvious from the task.

---

## Pending or Possible Next Work

- Any new batch of assignments Talha writes or dictates
