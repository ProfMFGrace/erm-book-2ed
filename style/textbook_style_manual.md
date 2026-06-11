# Textbook Chapter Style Manual for an Undergraduate ERM Text

## Purpose and audience
This manual defines the chapter-level style for an enterprise risk management textbook written for juniors and seniors in college. The book should speak directly to the reader in the second person, emphasize corporate decision-making across industries, and use mostly U.S. firms for illustrations, while permitting international examples when the company has a meaningful U.S. presence.

The goal is to create a consistent reading experience across chapters and to help you connect theory, regulation, management practice, and classroom discussion. Because the book will be typeset in LaTeX, the choices below focus on semantic structure as much as visual appearance, so the same logic can be implemented cleanly through LaTeX commands, environments, and style files.

## Core voice and framing
Use the second person throughout the text. The prose should tell the reader what you want them to notice, compare, evaluate, and apply. For example, a sentence should read, “As you evaluate this firm’s risk appetite, you should ask whether management has aligned incentives with stated objectives,” rather than using an impersonal or purely descriptive style.

Keep the book corporate-focused rather than limited to insurance or banking. Examples may come from manufacturing, retail, logistics, health care, technology, energy, food, pharmaceuticals, transportation, or other sectors in which enterprise risk management affects strategy, operations, finance, compliance, and reputation. Insurance and banking examples remain appropriate when they illuminate a broader principle, but they should not dominate the book’s identity.

Prefer U.S.-based firms and U.S. institutional context. International examples are permitted when the firm has a clear U.S. footprint, such as U.S. operations, U.S. listing, U.S. customers, or regulatory exposure in the United States. When an international example is used, explain why it matters for a reader studying firms that operate in or interact with the U.S. market.

## Chapter template
Each chapter should follow the same broad organizational sequence.

1. Chapter opener.
2. Learning objectives.
3. Main text organized by section and subsection.
4. Embedded pedagogical elements such as examples, sidebars, definitions, and exhibits.
5. End-of-chapter material, including key takeaways, discussion questions, short-answer questions, and references.

This sequence gives the reader a predictable chapter grammar. You should know where to look for framing at the beginning, where to find worked applications in the middle, and where to turn for reflection and review at the end.

## Chapter opener
Each chapter should begin with the following elements:

- Chapter number and title.
- A short introductory paragraph that tells you why the topic matters for corporate decision-making.
- A brief motivating vignette, mini-case, or scenario involving a firm or managerial choice.
- A list of learning objectives.

The opener should establish practical relevance quickly. The opening paragraph should be no more than one short paragraph, and the vignette should point directly toward the chapter’s central managerial question.

### LaTeX implementation
In LaTeX, the opener should be built from standard structural commands rather than manual formatting. Define a custom chapter-opening command or environment so the title block, overview paragraph, and learning objectives always appear in the same order and with the same spacing.

## Learning objectives
Write learning objectives in the second person. Begin each objective with an action verb, such as identify, explain, compare, evaluate, calculate, recommend, or critique.

Use three to six objectives per chapter. Each objective should map to at least one section of the chapter and at least one end-of-chapter question. This alignment helps you see that the chapter is teaching what it later asks you to recall, analyze, or apply.

## Heading hierarchy
Use a clean heading structure with no more than three substantive levels within a chapter.

- Level 1: Chapter title.
- Level 2: Major section headings.
- Level 3: Subsection headings.
- Level 4: Use sparingly and only when essential.

Write headings as informative signposts rather than clever labels. A heading such as “Risk Appetite and Corporate Strategy” is preferable to a vague heading such as “Big Choices.” In LaTeX, implement this through standard sectioning commands and a style file that fixes type size, spacing, numbering, and page-break behavior.

## Fonts and typography
The typographic system should be simple, legible, and professional.

- Use one primary serif font for body text.
- Use one complementary font family for headings only if needed; otherwise keep a single-family system.
- Reserve bold for headings, key terms on first use, and selective emphasis.
- Reserve italics for case names, foreign terms, and occasional conceptual emphasis.
- Do not use underlining for emphasis.

For LaTeX, define font choices in the preamble or class/style file, not chapter by chapter. The main style decision is semantic consistency: body text, headings, captions, notes, examples, and references should each have a defined role with a defined typographic treatment.

## Paragraphs and spacing
Paragraph style should support readability for advanced undergraduates.

- Keep paragraphs moderate in length, usually one idea or one clear logical step per paragraph.
- Avoid long walls of text.
- Prefer left-aligned text or a justified format with careful hyphenation, depending on the overall page design.
- Control widows and orphans through LaTeX settings rather than manual intervention.

Choose one paragraph convention and use it throughout: either first-line indentation with no extra space between paragraphs, or block paragraphs with vertical space between paragraphs. In LaTeX, this should be enforced globally through the document class or package settings so individual authors do not improvise.

## Lists and tables
Use lists when the reader needs to scan factors, steps, principles, or distinctions. Use numbered lists when order matters and bullet lists when sequence is not important.

Tables should be used when the reader needs to compare firms, concepts, frameworks, or governance structures side by side. Table titles should state the comparison clearly, and table notes should explain abbreviations, assumptions, or data limitations.

### LaTeX implementation
Define standard table environments for body tables and summary tables. Keep captions and notes consistent, and avoid manually resizing tables unless necessary.

## Key terms and definitions
Introduce key terms in bold on first use in the body text. If a term is especially important, repeat it in a dedicated key-term list at the end of the chapter.

Definitions should be concise and operational. A definition should tell you what the term means and why it matters for corporate analysis, not merely provide dictionary-style wording.

## Example boxes and sidebars
Use boxed elements for pedagogical variation, but limit the number of box types so the reader can recognize them quickly. Each box type should have a specific function.

Recommended box types:

- **Worked Example**: walks you through a short calculation, decision sequence, or interpretive problem.
- **Corporate Example**: shows how a real firm faced a risk, governance, or strategy issue.
- **Managerial Insight**: highlights an executive tradeoff, board question, or implementation challenge.
- **Regulatory Note**: explains a legal, disclosure, or compliance issue relevant to corporate practice.
- **Common Pitfall**: warns you about a frequent analytical mistake.

Each box should have a short title, a consistent visual treatment, and a clear connection to the surrounding text. In LaTeX, these should be implemented as distinct environments so spacing, borders, background tint, title format, and numbering remain uniform.

## Figures and exhibits
Figures and exhibits should follow the visual logic already established in the graph and figure style file. Captions should explain what you should notice, not merely restate the title of the figure.

Cross-reference every figure, table, and box in the text. In LaTeX, use labels and references consistently so numbering updates automatically.

## Mathematical and quantitative material
When a chapter includes equations, calculations, or simple analytics, introduce the notation in plain language before using it. Show enough intermediate steps that you can follow the logic without guessing what happened between lines.

Worked quantitative material should appear in either the main text or a worked-example box, depending on its importance. If a formula is central, explain the business interpretation of each component and note any assumptions or limitations.

## Citations and references
Choose one citation system and use it consistently throughout the book. Because the audience includes upper-level undergraduates, references should be complete enough for follow-up reading but not so dense that they overwhelm the instructional purpose.

If the text uses chapter-end references, each chapter should conclude with a references section in a consistent format. If legal sources such as statutes, regulations, or cases appear, create a style rule for how they are cited in text and how they appear in the chapter references.

### Reference policy
Prefer sources that support teaching and application:

- Foundational academic articles.
- Influential practitioner reports.
- Public filings, speeches, and regulatory documents.
- Reputable business press sources when used carefully and selectively.

## End-of-chapter material
Each chapter should end with a consistent set of pedagogical tools.

### Key takeaways
Provide a short list of the most important points from the chapter. These should be written as statements you should remember, not as vague reminders.

### Short-answer questions
Include short-answer questions that test comprehension, precision, and synthesis. These should usually ask you to define, distinguish, explain, or briefly apply a concept.

Examples of useful short-answer prompts include:

- Explain the difference between risk identification and risk assessment.
- Distinguish between a firm’s stated risk appetite and its revealed risk appetite.
- Identify one governance failure that could undermine effective ERM in a public company.

### Discussion questions
Include discussion questions that invite debate, judgment, and managerial reasoning. This is the best place to encourage discussion of contested issues at the end of the chapter.

Good discussion questions often ask you to do one of the following:

- Evaluate whether a firm balanced growth and control appropriately.
- Debate whether regulation improved risk governance or merely increased formal compliance.
- Consider whether a board should tolerate more risk in pursuit of innovation.
- Compare how two firms in different industries might respond to the same strategic risk.
- Discuss whether reputational risk should be managed differently from financial risk.

### Application or mini-case questions
Where appropriate, conclude with one short applied problem or mini-case. This should require you to interpret facts, diagnose risks, and recommend a managerial response.

## Additional elements worth including
A strong undergraduate textbook often benefits from a few recurring elements beyond the standard chapter body.

### Why this matters
A short boxed or italicized feature early in the chapter can explain why the concept matters for corporate practice. This helps you connect theory to executive decision-making.

### Boardroom question
A recurring “boardroom question” can ask what directors should ask management about the issue covered in the chapter. This keeps the corporate governance perspective visible.

### Checklist
A short checklist can help you review a framework or process, such as the steps in risk assessment or the elements of a reporting system.

### Key term list
A chapter-end key term list can reinforce vocabulary and support exam preparation.

### Further reading
A short further-reading section can point you to one foundational academic source, one practitioner source, and one current or illustrative applied source.

## Case-selection guidelines
Use firms and episodes that reward analysis rather than merely storytelling.

- Prefer cases with identifiable decisions, tradeoffs, or failures.
- Prefer firms that are recognizable to students or easy to explain.
- Avoid examples that depend too heavily on industry-specific technical detail unless that detail is essential.
- Use international firms only when the U.S. connection is clear and worth noting.

A chapter should not become a catalogue of anecdotes. Each case, example, or sidebar should clarify a concept, sharpen a comparison, or generate a discussion worth having.

## Accessibility and clarity
Design choices should support readability in print and digital formats.

- Use clear contrast in text and boxes.
- Box title bars should use high-contrast text. When a title bar is black or dark gray, use white title text; reserve black title text for light gold or other pale title backgrounds.
- Avoid encoding meaning by color alone.
- Keep captions and notes informative.
- Make box titles descriptive.
- Use consistent labeling so you can find recurring elements easily.

In LaTeX, accessibility-conscious choices often begin with semantic consistency. When every element has a defined environment and a predictable structure, the text is easier to convert, review, and maintain.

## Author discipline and consistency
The style manual should reduce improvisation. If a feature appears in one chapter, the same feature should appear in the same form in later chapters unless there is a strong reason to vary it.

This means each chapter should use the same naming rules, the same sequence of end material, the same box categories, the same heading levels, and the same citation logic. Consistency is especially important in a textbook because repeated visual and organizational cues help you focus on content rather than format.

## Recommended LaTeX style components
To implement this manual cleanly, create LaTeX commands or environments for the following items:

- Chapter opener.
- Learning objectives.
- Key terms.
- Worked examples.
- Corporate examples.
- Managerial insights.
- Regulatory notes.
- Common pitfalls.
- Key takeaways.
- Short-answer questions.
- Discussion questions.
- Mini-cases.
- Further reading.

These semantic building blocks will make the manuscript easier to write, edit, and maintain. They will also make it easier to keep the visual identity of the textbook aligned with the figure style you have already developed.
