#!/bin/bash
# Syncs markdown files between a target directory and the content folder
# 1. Moves non-symlinked .md files from target to content/, creates symlink back
# 2. Deletes content files whose symlinks were removed from target

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONTENT_DIR="$SCRIPT_DIR/content"

if [ -z "$1" ]; then
    echo "Usage: ./create-symlinks.sh <target-directory>"
    exit 1
fi

TARGET_DIR="$1"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: $TARGET_DIR is not a directory"
    exit 1
fi

# Move non-symlinked .md files from target to content, create symlink back
for file in "$TARGET_DIR"/*.md; do
    [ -e "$file" ] || continue
    if [ ! -L "$file" ]; then
        filename=$(basename "$file")
        mv "$file" "$CONTENT_DIR/$filename"
        ln -s "$CONTENT_DIR/$filename" "$TARGET_DIR/$filename"
        echo "Moved and symlinked: $filename"
    fi
done

# Delete content files that no longer have symlinks in target
for file in "$CONTENT_DIR"/*.md; do
    [ -e "$file" ] || continue
    filename=$(basename "$file")
    if [ ! -e "$TARGET_DIR/$filename" ]; then
        rm "$file"
        echo "Deleted: $filename"
    fi
done
