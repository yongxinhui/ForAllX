# An Introduction to Formal Logic

This project is a distant descendant of the open source logic textbook [ForAllX](https://www.fecundity.com/logic/) which has been heavily revised for teaching Logic I at MIT.
You can find a current version of the PDF [here](https://github.com/benbrastmckie/ForAllX/blob/master/forallx-mit.pdf).

Whereas introductory logic courses often draw students who are new to writing mathematical proofs, the undergraduate students taking logic at MIT have strong formal backgrounds.
This textbook was rewritten on their behalf and aims to provide a philosophically and formally rigorous introduction to formal logic through the soundness and completeness of first-order logic with identity.
I have taken pains to provide rigorous proofs throughout, including commentary about how the proofs work in addition to discussing their motivations.

Although this text is written with greater formal rigor than is common in most introductory textbooks in logic, I have aimed to preserve the friendly and accessible character of ForAllX in addition to preserving its title.
Additionally, I have included discussions of the philosophical foundations of logic which are often omitted in introductory books and simply alluded to in more advanced treatments.

## Building the Project

### Prerequisites

- A complete LaTeX distribution (e.g., TeX Live, MacTeX, or MiKTeX)
- `latexmk` (usually included with LaTeX distributions)
- Python 3 (for the pdflatex.py script)
- `pdftk` (for combining handouts)

### Building with latexmk

The recommended way to build the project is using `latexmk`:

```bash
# Build the main textbook
cd Book
latexmk -pdf forallx-mit.tex

# Build individual lectures
cd Lectures/Week01_1
latexmk -pdf Week01_1.tex

# Clean auxiliary files
latexmk -C
```

### Using with Vim/Neovim

If you use Vim with the vimtex plugin, compilation happens automatically. The project includes a `.latexmkrc` file with sensible defaults for the entire project.

### Building Everything

For convenience, you can build all course materials at once:

```bash
bash scripts/build-all.sh
```

This will:
1. Build the main textbook
2. Build all lecture notes
3. Generate the combined handouts PDF

To clean all auxiliary files:

```bash
bash scripts/clean-all.sh
```

## Project Structure

```
ForAllX/
├── Book/               # Main textbook source
│   ├── Chapters/       # Book chapters organized by topic
│   ├── Assets/         # Images and figures
│   └── sty/            # LaTeX style files
├── Lectures/           # Weekly lecture notes
├── Bibliography/       # Bibliography files
├── Syllabus/          # Course syllabus
├── Handouts/          # Generated lecture handouts
├── Scripts/           # Build and utility scripts
└── forallx-mit.pdf    # Main textbook PDF
```

### LaTeX Style Files

The specialized LaTeX formatting and typesetting for this textbook is handled by custom style files in the `Book/sty/` directory. For detailed documentation on the logical notation, proof systems, and formatting commands available, see the [Style Files Documentation](Book/sty/README.md).

## Using this Textbook

The terms at MIT span fifteen weeks, two of which are devoted to soundness and completeness for propositional logic (PL) and another two weeks to extend these results to first-order logic with identity (FOL).
In order to introduce the material at a slower rate or over the course of a shorter term, the metalogical portions of the text can easily be omitted without compromising the integrity of the text.
I hope to someday expand the text to include practice problems, a glossary of terms and notation, and a bibliography for further study.

In addition to the [textbook](https://github.com/benbrastmckie/ForAllX/tree/master/Book/Chapters), I have included source files for the [lecture notes](https://github.com/benbrastmckie/ForAllX/tree/master/Lectures) (compiled here as a [PDF](https://github.com/benbrastmckie/ForAllX/blob/master/Handouts/All_Handouts.pdf)) as well as the [syllabus](https://github.com/benbrastmckie/ForAllX/blob/master/Syllabus/Syllabus.pdf) for the course at MIT.
Feel free to contact me if you would like access to the exams, written problem sets, and assignments on [Carnap](https://carnap.io/).

## Collaboration

Although you are welcome to fork this repository adapting these resources as you please, I would also be happy to accept pull requests and would greatly appreciate being notified of any errors.
If you have any suggestion or questions, I would encourage you to open an issue above.
At some point I hope to include documentation describing how to adapt these resources for those new to LaTeX and GitHub.

If you are interested in using the text editor that I used to streamline work on this project, you can check out the [NeoVim config](https://github.com/benbrastmckie/.config) that I maintain, as well as the [VSCodium config](https://github.com/benbrastmckie/VSCodium) that I started for those who are looking for something a little more user friendly.

## Pending

Rather than attempting to record all of the changes that I have made, I will state the main changes that I still hope to make:

-  Include a primer on set theory, relations, and functions in an _Appendix_.
-  Include a glossary of terms and symbols.
-  Include cheatsheets for the proof rules for PL and FOL in an _Appendix_.
-  Include an index of lemmas, theorems, and corollaries.
-  Include practice problems for each week along with solutions.
