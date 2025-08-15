# LaTeX Style Files for ForAllX Logic Textbook

This directory contains the LaTeX style files that provide specialized formatting and functionality for the ForAllX logic textbook. These files define the typesetting conventions, mathematical notation, and proof systems used throughout the book.

## Files Overview

### forallx-mit.sty
**Main style file for the textbook**

This is the primary style file that configures the entire document. It provides:

#### Core Packages and Dependencies
- **Document formatting**: `geometry`, `fancyhdr`, `setspace` for page layout and spacing
- **Mathematics**: `amsmath`, `amssymb`, `amsthm` for mathematical notation and theorem environments
- **Fonts**: `mathpazo`, `tgpagella` for Palatino-based typography
- **Tables and lists**: `booktabs`, `enumitem` for professional table and list formatting
- **Cross-references**: `hyperref`, `cleveref` for internal document linking

#### Logical and Mathematical Notation
- **Propositional logic symbols**: `\lnot`, `\land`, `\lor`, `\lif`, `\liff` for negation, conjunction, disjunction, conditional, biconditional
- **Quantifiers**: `\lforall`, `\lexists` for universal and existential quantification  
- **Modal operators**: `\nec`, `\pos` for necessity and possibility
- **Semantic notation**: `\entails`, `\proves`, `\nproves` for semantic and syntactic consequence
- **Set theory**: `\card{...}`, `\dom{...}`, `\extension{...}` for cardinality, domain, and set extensions
- **Truth values**: `\True`, `\False` for semantic evaluation

#### Theorem Environments
Structured environments for presenting logical concepts:
- **theorem**: For major theoretical results
- **lemma**: For auxiliary propositions
- **corollary**: For immediate consequences of theorems
- **definition**: For precise concept definitions
- **example**: For illustrative cases
- **exercise**: For practice problems
- **remark**: For additional commentary

#### List Environments for Arguments
- **earg**: Enumerated argument structure with automatic numbering
- **arguments**: Specialized environment for presenting logical arguments

#### Natural Deduction Proof System
Integration with Fitch-style natural deduction:
- **Basic proof structure**: Support for assumption/conclusion format
- **Inference rules**: Standard introduction and elimination rules for logical operators
- **Subproof handling**: Nested proof structures with proper indentation
- **Line justification**: Automatic line numbering and rule citations

### prooftrees.sty
**Specialized package for typesetting natural deduction proofs and semantic tableaux**

This package (originally by Clea F. Rees, modified for MIT) provides sophisticated proof tree capabilities:

#### Core Functionality
- **Forest-based rendering**: Uses the powerful `forest` package for tree layout
- **Automatic line numbering**: Configurable numbering system for proof lines
- **Cross-referencing**: Support for justifications that reference previous lines
- **Flexible layouts**: Both compact grouped and explicit branching modes

#### Natural Deduction Features
- **Assumption tracking**: Mark and discharge assumptions in proofs
- **Rule justifications**: Reference previous lines and inference rules used
- **Subproof structure**: Nested proof segments with proper visual hierarchy
- **Universal/Existential**: Special notation for quantifier instantiation

#### Semantic Tableaux Features (MIT Enhancement)
- **Branch closure**: Mark contradictory branches with `\otimes` symbol
- **Branch opening**: Mark open/satisfiable branches with `\uparrow` symbol (MIT addition)
- **Annotations**: Add explanatory text to closure/opening markers
- **Cross-references**: Link branch closures to the contradictory formulas

#### User Commands

##### Environment Usage
```latex
\begin{prooftree}[options]
    [Formula 1]
    [Formula 2, just=rule:1]
    [Formula 3
        [Subproof assumption]
        [Subproof conclusion, just=rule:assumption]
    ]
    [Final conclusion, just=rule:2,3]
\end{prooftree}
```

##### Key Styles and Options
- `just=text:refs`: Add justification with cross-references to previous lines
- `close` / `close=annotation:refs`: Mark tableau branch as closed with optional annotation
- `open` / `open=annotation:refs`: Mark tableau branch as open (MIT addition)
- `checked` / `checked=name`: Mark discharged assumptions (existential instantiation)
- `subs=name`: Mark universal instantiation with substituted term
- `move by=n`: Manually adjust line positioning
- `to prove=statement`: Set the statement being proved at the top
- `zero start`: Begin line numbering from 0 instead of 1

##### Global Configuration
- `line numbering` / `not line numbering`: Control automatic line numbering
- `justifications` / `not justifications`: Enable/disable justification column
- `single branches` / `not single branches`: Control branch drawing style

## Integration and Usage

### In Document Preamble
```latex
\usepackage{forallx-mit}    % Loads all textbook formatting and notation
% prooftrees.sty is automatically loaded by forallx-mit.sty
```

### Common Patterns

#### Propositional Logic Example
```latex
\begin{prooftree}
    [\lnot(\lphi \land \psi), just=assumption]
    [\lnot\lphi \lor \lnot\psi, just=De Morgan:1]
\end{prooftree}
```

#### Predicate Logic with Quantifiers
```latex
\begin{prooftree}
    [\lforall x \lphi(x), just=assumption]
    [\lphi(a), just=\lforall E:1, subs=a]
    [\lexists x \lphi(x), just=\lexists I:2]
\end{prooftree}
```

#### Semantic Tableau
```latex
\begin{prooftree}
    [\lphi \land \lnot\lphi, just=to test]
    [\lphi, just=\land E:1]
    [\lnot\lphi, just=\land E:1, close=contradiction:2,3]
\end{prooftree}
```

## File Dependencies

The style files have the following dependency structure:

```
forallx-mit.sty
├── Standard LaTeX packages (amsmath, geometry, etc.)
├── prooftrees.sty
│   ├── forest.sty (tree layout engine)
│   ├── amssymb.sty (mathematical symbols)
│   └── etoolbox.sty (programming utilities)
└── Custom theorem environments and notation
```

## Customization

Both style files are extensively documented with comments explaining each component. Key customization points:

### forallx-mit.sty
- Modify `\linenumberstyle{#1}` to change proof line number formatting
- Adjust spacing parameters in the geometry setup
- Customize theorem environment styling in the `\theoremstyle` sections

### prooftrees.sty  
- Change symbols: `\renewcommand{\checkwith}{...}`, `\renewcommand{\closewith}{...}`
- Adjust spacing: Modify `just sep`, `line no sep`, `close sep` registers
- Customize highlighting: Configure `highlight format` register

## Version Information

- **forallx-mit.sty**: Custom style for MIT Logic course, derived from original ForAllX
- **prooftrees.sty**: v0.6 by Clea F. Rees, enhanced by Jonathan Ichikawa for MIT with open branch support

Both files are maintained under the LaTeX Project Public License (LPPL) and can be freely modified and redistributed.