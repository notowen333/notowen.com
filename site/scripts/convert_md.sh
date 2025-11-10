#!/usr/bin/env bash
set -e

SRC="md"
OUT="html"

mkdir -p "$OUT"

# assume that the script is run from the site/ path
find "$SRC" -type f -name '*.md' | while read -r file; do
    rel="${file#$SRC/}"
    out="$OUT/${rel%.md}.html"
    mkdir -p "$(dirname "$out")"
    pandoc --template=pandoc/template.html "$file" -o "$out"
done