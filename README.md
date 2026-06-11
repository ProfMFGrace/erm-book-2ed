# Enterprise Risk Management (ERM) — Second Edition

Welcome to the repository for **Enterprise Risk Management, Second Edition** by **Martin F. Grace** (Professor of Finance &
Clement T. and Sylvia H. Hanson Family Chair,
Faculty Director of the Vaughan Institute
 Tippie College of Business
University of Iowa. mfgrace@uiowa and Georgia Regents'Proessor Emeritus, Georgia State University). 

This is a modern, undergraduate-focused textbook on Enterprise Risk Management designed for juniors and seniors in college. The text is written to focuse on corporate decision-making across diverse industries, connecting theory, regulation, management practice, and classroom discussions. It was outlined by the author and was written interactively with a large degree of help from Anthropic's Claude 4.6 and 5.

---

## License

This project is licensed under the **[Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)](https://creativecommons.org/licenses/by-nc/4.0/)** License. 

You are free to:
* **Share** — Copy and redistribute the material in any medium or format.
* **Adapt** — Remix, transform, and build upon the material to create customized readings, course packs, or lecture outlines.

Under the following terms:
* **Attribution** — You must give appropriate credit, provide a link to the license, and indicate if changes were made.
* **NonCommercial** — You may not use the material for commercial purposes (such as selling it or compiling it into a commercial product).

---

## How to Get the Book

### 1. Direct PDF Download
You can download the pre-compiled, publication-ready PDF of the entire book directly from this repository:
👉 **[book/erm_book.pdf](book/erm_book.pdf)**

### 2. Compile From LaTeX Source
If you want to customize the typesetting, modify style configurations, or build the book yourself, you can compile it from the source files using any standard LaTeX environment (such as TeX Live, MiKTeX, or Overleaf):
1. Navigate to the `book/` directory.
2. Compile the master file `erm_book.tex` using the following sequence:
   ```bash
   pdflatex erm_book.tex
   pdflatex erm_book.tex
   makeindex erm_book.idx
   pdflatex erm_book.tex
   ```
   *Note: Standalone chapter source files and slide decks are stored in their respective directories.*

---

## AI-Assisted Adaptation & Customization

This textbook was written using a collaborative human-AI workflow (documented in the book's Preface). In the spirit of open education and modern technology, you are encouraged to use these source files as starting points for AI-assisted study or instruction.

If you want to write a customized version, translate a chapter, or adapt the text to a specific industry:
1. **Download the Markdown version** of any chapter from its directory:
   * 📘 [Chapter 1: Why Risk Management Matters (Markdown)](chapter_01/Chapter_01_Why_Risk_Management_Matters.md)
   * 📘 [Chapter 2: Enterprise Risk Management (Markdown)](chapter_02/Chapter_02_Enterprise_Risk_Management.md)
   * 📘 [Chapter 3: Risk Identification (Markdown)](chapter_03/Chapter_03_Risk_Identification.md)
   * 📘 [Chapter 4: Risk Quantification & Qualification (Markdown)](chapter_04/Chapter_04_Risk_Quantification_Qualification.md)
   * 📘 [Chapter 5: Risk Appetite & the ERM Process (Markdown)](chapter_05/Chapter_05_Risk_Appetite_ERM_Process.md)
   * 📘 [Chapter 6: Risk Portfolio (Markdown)](chapter_06/Chapter_06_Risk_Portfolio.md)
   * 📘 [Chapter 7: Loss Control & Risk Reduction (Markdown)](chapter_07/Chapter_07_Loss_Control_Risk_Reduction.md)
   * 📘 [Chapter 8: Risk Finance & ART (Markdown)](chapter_08/Chapter_08_Risk_Finance_ART.md)
   * 📘 [Chapter 9: Corporate Risk Governance (Markdown)](chapter_09/Chapter_09_Corporate_Risk_Governance.md)
2. **Use with AI (ChatGPT, Claude, Gemini, etc.):**
   * Feed the markdown content into your preferred AI tool.
   * **Prompt Idea:** *"Using the attached chapter on Risk Identification as a starting point, rewrite it to place a heavy emphasis on risks unique to the healthcare sector, and create three new case studies illustrating these concepts."*
   * **Prompt Idea:** *"Generate 5 discussion questions and a 10-question multiple-choice quiz based on the attached Chapter 4 markdown file."*

---

## Directory Overview

* **`book/`**: Contains the main book build LaTeX file, bibliography, and compiled PDF.
* **`chapter_01/` to `chapter_09/`**: Chapter source files (in both `.tex` and `.md` formats).
* **`slides/`**: LaTeX and PDF slide decks corresponding to each chapter for lectures.
* **`rscripts/`**: R scripts used to generate the charts, loss distributions, and figures in the book.
* **`style/`**: LaTeX style guide, templates, and formatting packages (`erm_textbook_style.sty`).
* **`archive/`**: Historical draft versions of chapters kept for records.
