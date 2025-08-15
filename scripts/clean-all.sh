#!/bin/bash
# clean-all.sh - Remove all LaTeX auxiliary files

echo "Cleaning LaTeX auxiliary files..."

# Define file extensions to remove
CLEAN_EXTS="aux fdb_latexmk fls log out synctex.gz toc nav snm bbl blg xmpi"

# Clean in all directories
for ext in $CLEAN_EXTS; do
    echo "Removing *.$ext files..."
    find . -name "*.$ext" -type f -delete
done

# Clean specific temporary files
find . -name "pdflatex*.fls" -type f -delete

echo "Clean complete!"