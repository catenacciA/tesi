#!/bin/bash

# Directory setup
outputDir=out

# Clean up previous builds
latexmk -c -outdir=$outputDir
rm -rf "${outputDir:?}"/*

# Ensure the output directory exists
mkdir -p $outputDir

# Compile the document
latexmk -f -pdf -outdir=$outputDir -interaction=nonstopmode main.tex

echo "Compilation completed. Check the '$outputDir' directory for the output."

