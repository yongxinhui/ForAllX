#!/bin/bash
# build-all.sh - Optional convenience script to build all course materials
# This script builds the book, all lectures, and generates handouts

set -e  # Exit on error

echo "Building ForAllX course materials..."

# Build the main book
echo "Building main textbook..."
cd Book && latexmk -pdf forallx-mit.tex && cd ..

# Build all lecture notes
echo "Building lecture notes..."
for dir in Lectures/Week*/; do
    if [ -d "$dir" ] && [ -f "$dir"/*.tex ]; then
        echo "Building $dir"
        cd "$dir"
        for tex in *.tex; do
            if [ -f "$tex" ]; then
                latexmk -pdf "$tex"
            fi
        done
        cd ../..
    fi
done

# Update handouts
echo "Updating handouts collection..."
if [ -f update_handouts.sh ]; then
    bash update_handouts.sh
else
    echo "Warning: update_handouts.sh not found"
fi

echo "Build complete!"