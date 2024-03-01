#!/bin/bash

# Clean up previous builds (optional but recommended for a clean build)
rm -rf out/*

# Create the output directory if it doesn't exist
mkdir -p out

# Compile the LaTeX document, this involves multiple steps

# Step 1: Compile the main document. This generates aux files needed for bibliography
pdflatex -output-directory=out -interaction=nonstopmode tesi.tex

# Step 2: Run bibtex/biber to process bibliography. Adjust if using biber
biber out/tesi

# Step 3: Run pdflatex again to incorporate bibliography references and resolve cross-references
pdflatex -output-directory=out -interaction=nonstopmode tesi.tex
pdflatex -output-directory=out -interaction=nonstopmode tesi.tex

# Note: The script runs pdflatex multiple times because LaTeX needs multiple passes to
# resolve all references correctly, especially when dealing with bibliographies and cross-references.

echo "Compilation completed. Check the 'out' directory for the output."
