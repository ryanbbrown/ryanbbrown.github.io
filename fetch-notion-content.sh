#!/bin/bash

# Fetches a Notion "meta" page and all child pages referenced within it.
# Usage: ./fetch-notion-meta-content.sh
# Requires NOTION_TOKEN and NOTION_FILE_TOKEN environment variables.

set -euo pipefail

# Meta page containing the list of links to export
META_PAGE_ID="29034e8e2c758016951ad78a805a9dbd"
CONTENT_DIR="content"
mkdir -p "$CONTENT_DIR"

if [ -z "${NOTION_TOKEN:-}" ]; then
    echo "Error: NOTION_TOKEN environment variable is not set"
    exit 1
fi

if [ -z "${NOTION_FILE_TOKEN:-}" ]; then
    echo "Error: NOTION_FILE_TOKEN environment variable is not set"
    exit 1
fi

convert_markdown_to_hugo() {
    local src="$1"
    local dst="$2"

    if grep -q '^# ' "$src"; then
        local title
        title=$(grep -m 1 '^# ' "$src" | sed 's/^# //')
        local escaped_title
        escaped_title=${title//\"/\\\"}

        {
            echo "---"
            echo "title: \"$escaped_title\""
            echo "---"
            echo ""
            awk 'BEGIN {removed=0} {
                if (!removed && /^# /) {removed=1; next}
                print
            }' "$src"
        } > "$dst"
    else
        cp "$src" "$dst"
    fi
}

process_notion_page() {
    local page_id="$1"
    local output_file="$2"
    local temp_file
    temp_file=$(mktemp)
    local attempt=1
    local max_attempts=3

    echo "Fetching Notion page $page_id -> $output_file"
    until notion-exporter "$page_id" -t md > "$temp_file"; do
        if [ "$attempt" -ge "$max_attempts" ]; then
            echo "Error: Failed to fetch page $page_id after $max_attempts attempts"
            rm -f "$temp_file"
            return 1
        fi
        echo "Retrying ($attempt/$max_attempts)..."
        attempt=$((attempt + 1))
        sleep 2
    done

    convert_markdown_to_hugo "$temp_file" "$output_file"
    rm -f "$temp_file"
    echo "✓ Saved $output_file"
    sleep 1
}

meta_temp_file=$(mktemp)
meta_list_file=$(mktemp)
cleanup() {
    rm -f "$meta_temp_file" "$meta_list_file"
}
trap cleanup EXIT

notion-exporter "$META_PAGE_ID" -t md > "$meta_temp_file"
convert_markdown_to_hugo "$meta_temp_file" "$CONTENT_DIR/meta-page.md"
echo "Meta page saved to $CONTENT_DIR/meta-page.md"

# Only inspect the portion of the meta page above END-PAGELIST
sed '/^END-PAGELIST/q' "$meta_temp_file" > "$meta_list_file"

declare -a processed_page_ids=()
child_pages_found=0

while IFS=$'\t' read -r page_name page_id; do
    child_pages_found=1
    [ -z "$page_id" ] && continue

    page_already_processed=false
    if [ "${#processed_page_ids[@]}" -gt 0 ]; then
        for existing_id in "${processed_page_ids[@]}"; do
            if [ "$existing_id" = "$page_id" ]; then
                page_already_processed=true
                break
            fi
        done
    fi
    if [ "$page_already_processed" = true ]; then
        echo "Skipping duplicate entry for $page_name ($page_id)"
        continue
    fi
    processed_page_ids+=("$page_id")

    page_name=$(echo "$page_name" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    safe_name=$(printf "%s" "$page_name" | tr '[:upper:]' '[:lower:]')
    safe_name=$(printf "%s" "$safe_name" | tr -s '[:space:]' '-')
    safe_name=${safe_name//\//-}
    output_file="$CONTENT_DIR/$safe_name.md"

    process_notion_page "$page_id" "$output_file"
done < <(
    perl -ne '
        while (/\[([^\]]+)\]\([^)]*([0-9a-f]{32})[^)]*\)/g) {
            my $name = $1;
            $name =~ s/^\s+|\s+$//g;
            print "$name\t$2\n";
        }
    ' "$meta_list_file"
)

if [ "$child_pages_found" -eq 0 ]; then
    echo "No child pages found before END-PAGELIST; nothing else to fetch."
    exit 0
fi

echo "All child pages fetched successfully."
