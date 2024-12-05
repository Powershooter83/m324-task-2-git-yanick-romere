#!/bin/bash

INPUT_FILE="README.md"
OUTPUT_FILE="index.html"

if [[ ! -f $OUTPUT_FILE ]] || [[ $INPUT_FILE -nt $OUTPUT_FILE ]]; then
    pandoc $INPUT_FILE -o $OUTPUT_FILE --metadata title="GitHub Pages" -s
fi
