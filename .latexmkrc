# Global latexmk settings for ForAllX project
# This file provides default settings for all LaTeX compilations

# Use pdflatex by default
$pdf_mode = 1;

# pdflatex options
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';

# Additional file extensions to clean
$clean_ext = 'aux fdb_latexmk fls log out synctex.gz toc nav snm bbl blg xmpi';

# Bibtex options
$bibtex_use = 2;  # Use bibtex when .bib files exist

# Preview options (for continuous mode)
$preview_continuous_mode = 1;
$preview_mode = 1;