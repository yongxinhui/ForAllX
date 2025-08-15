# ForAllX Repository Refactoring Plan

## Executive Summary

This document outlines a comprehensive plan to improve the ForAllX LaTeX book repository, focusing on build automation, code organization, documentation, and maintainability. The repository contains a logic textbook with accompanying lecture materials but lacks modern build tooling and consistent organization.

## Current State Analysis

### Strengths
- Well-structured LaTeX content with clear chapter organization
- Modular style files (forallx-mit.sty, lecture.sty, fitch.sty)
- Comprehensive course materials (textbook, lectures, problem sets)
- Custom pdflatex.py script for automatic PDF relocation

### Issues Identified

1. **Build System**
   - Python 2 script (pdflatex.py) with print statements incompatible with Python 3
   - No automated build scripts for generating all course materials at once
   - Could benefit from optional Makefile for batch operations

2. **Repository Organization**
   - LaTeX auxiliary files (.aux, .log, etc.) tracked in git despite .gitignore
   - Main book PDF (forallx-mit.pdf) should remain in root for easy access

3. **Style File Issues**
   - Duplicate macro definitions between forallx-mit.sty and lecture.sty
   - Mixed code from multiple sources (Selinger, Ichikawa, Calgary) in lecture.sty
   - Hardcoded dimensions and spacing values
   - Legacy code and commented sections

4. **Documentation Gaps**
   - No comprehensive build instructions
   - Missing dependency documentation
   - No contributor guidelines
   - Limited inline documentation in style files

## Implementation Plan

### Phase 1: Build System Improvements

#### 1.1 Update pdflatex.py for Python 3
- Convert print statements to print()
- Add shebang: `#!/usr/bin/env python3`
- Improve error handling
- Add command-line argument parsing

#### 1.2 Create Optional Build Scripts
```bash
#!/bin/bash
# scripts/build-all.sh - Optional convenience script
echo "Building all course materials..."
cd Book && latexmk -pdf forallx-mit.tex && cd ..
for dir in Lectures/Week*/; do
    echo "Building $dir"
    cd "$dir" && latexmk -pdf *.tex && cd ../..
done
bash update_handouts.sh
```

#### 1.3 Add .latexmkrc for Project Defaults (Optional)
```perl
# Global latexmk settings for the project
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
$clean_ext = 'aux fdb_latexmk fls log out synctex.gz toc nav snm';
```

### Phase 2: Repository Cleanup

#### 2.1 Git Cleanup
- Remove all LaTeX auxiliary files from tracking
- Update .gitignore to properly exclude build artifacts
- Keep forallx-mit.pdf in root for easy user access
- Add pre-commit hook to prevent auxiliary file commits

#### 2.2 Minimal Directory Restructuring
```
ForAllX/
├── Book/
│   ├── Chapters/
│   ├── Assets/
│   └── sty/         # Keep existing location
├── Lectures/
│   └── Week*/
├── Bibliography/
├── Syllabus/
├── Handouts/        # Generated PDFs
├── OLD/             # Archive (no changes needed)
├── scripts/         # New: Build and utility scripts
├── specs/           # Documentation
└── forallx-mit.pdf  # Main book PDF stays in root
```

### Phase 3: Style File Refactoring

#### 3.1 Consolidate Common Macros
- Create `common-macros.sty` for shared definitions
- Remove duplicates between forallx-mit.sty and lecture.sty
- Document each macro's purpose

#### 3.2 Modularize Style Files
```
Styles/
├── forallx-core.sty     # Core book styling
├── forallx-logic.sty    # Logic-specific macros
├── forallx-proofs.sty   # Proof environments (fitch, nd)
├── lecture-core.sty     # Lecture-specific styling
└── common-macros.sty    # Shared definitions
```

#### 3.3 Configuration File
Create `config.tex` for customizable settings:
```latex
% Dimensions
\newcommand{\fitchlineheight}{1.5\baselineskip}
\newcommand{\fitchindent}{1em}
\newcommand{\prooflabelsep}{1em}
% Feature toggles
\newboolean{showproofnumbers}
\setboolean{showproofnumbers}{true}
```

### Phase 4: Content Improvements

#### 4.1 Problem Set Organization
- Create answer key compilation option
- Add difficulty ratings and topic tags

#### 4.2 Add Glossary and Index
- Implement glossary using glossaries package
- Add index entries throughout text
- Create quick reference cards

### Phase 5: Documentation Enhancement

#### 5.1 Enhance README
- Add latexmk build instructions
- Document vimtex integration tips
- Explain project structure
- Add contribution guidelines

#### 5.2 Style Guide Documentation
Create `docs/style-guide.md`:
- LaTeX coding conventions
- Macro naming conventions
- Proof formatting guidelines
- Citation style requirements

#### 5.3 Inline Documentation
- Add package documentation headers
- Document complex macros
- Provide usage examples

### Phase 6: Testing and CI/CD

#### 6.1 Create Test Suite
```bash
#!/bin/bash
# tests/compile-test.sh
for chapter in Book/Chapters/*/*.tex; do
    echo "Testing $chapter"
    pdflatex -interaction=nonstopmode "$chapter" > /dev/null
    if [ $? -ne 0 ]; then
        echo "FAIL: $chapter"
        exit 1
    fi
done
```

#### 6.2 GitHub Actions Workflow
```yaml
name: Build LaTeX
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: xu-cheng/latex-action@v2
        with:
          root_file: Book/forallx-mit.tex
      - uses: actions/upload-artifact@v2
        with:
          name: PDFs
          path: build/*.pdf
```

### Phase 7: Advanced Features

#### 7.1 Multiple Output Formats
- Add HTML output using tex4ht
- Create EPUB version for e-readers
- Generate accessible PDF with proper tagging

#### 7.2 Internationalization
- Separate content from language-specific strings
- Create translation framework
- Support for right-to-left languages

#### 7.3 Interactive Features
- Add hyperlinked cross-references
- Create clickable table of contents
- Implement pop-up definitions for terms

## Implementation Timeline

- **Week 1**: Phase 1 (Build System Improvements)
- **Week 2-3**: Phase 2 (Repository Cleanup)
- **Week 4-5**: Phase 3 (Style Refactoring)
- **Week 6-7**: Phase 4 (Content Improvements)
- **Week 8-9**: Phase 5 (Documentation)
- **Week 10**: Phase 6 (Testing/CI)
- **Future**: Phase 7 (Advanced Features)

## Success Metrics

1. **Python 3 Compatibility**: pdflatex.py works with modern Python
2. **Code Duplication**: Eliminate 90% of duplicate macros
3. **Documentation Coverage**: 100% of public macros documented
4. **Clean Repository**: No auxiliary files in version control
5. **Contributor Experience**: Clear build instructions using latexmk

## Risk Mitigation

1. **Backward Compatibility**: Maintain legacy commands with deprecation warnings
2. **Version Control**: Tag current state before major changes
3. **Incremental Migration**: Implement changes in small, testable chunks
4. **Community Input**: Solicit feedback before major structural changes

## Conclusion

This refactoring plan addresses the key technical issues in the ForAllX repository while respecting the existing workflow and structure. The focus is on essential improvements: Python 3 compatibility, eliminating code duplication, cleaning up version control, and improving documentation. The phased approach ensures minimal disruption while delivering meaningful improvements in maintainability and usability.
