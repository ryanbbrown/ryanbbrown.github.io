#!/bin/bash
# One-time setup: creates symlinks in target directory for all content files

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONTENT_DIR="$SCRIPT_DIR/content"

if [ -z "$1" ]; then
    echo "Usage: ./initial-symlinks.sh <target-directory>"
    exit 1
fi

TARGET_DIR="$1"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: $TARGET_DIR is not a directory"
    exit 1
fi

for file in "$CONTENT_DIR"/*.md; do
    [ -e "$file" ] || continue
    filename=$(basename "$file")
    ln -sf "$file" "$TARGET_DIR/$filename"
    echo "Symlinked: $TARGET_DIR/$filename -> $file"
done
