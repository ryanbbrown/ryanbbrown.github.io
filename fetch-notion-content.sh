#!/bin/bash

# Notion Export Script
# This script fetches content from Notion and saves it to multiple markdown files
#
# Required environment variables:
# - NOTION_TOKEN: Your Notion token_v2 cookie value
# - NOTION_FILE_TOKEN: Your Notion file_token cookie value

set -e

# Check for required environment variables
if [ -z "$NOTION_TOKEN" ]; then
    echo "Error: NOTION_TOKEN environment variable is not set"
    echo "Please set it with: export NOTION_TOKEN='your_token_v2_here'"
    exit 1
fi

if [ -z "$NOTION_FILE_TOKEN" ]; then
    echo "Error: NOTION_FILE_TOKEN environment variable is not set"
    echo "Please set it with: export NOTION_FILE_TOKEN='your_file_token_here'"
    exit 1
fi

# Function to process a Notion page and convert to Hugo markdown
# Args: $1 = page_id, $2 = output_file
process_notion_page() {
    local page_id="$1"
    local output_file="$2"
    local temp_file="/tmp/notion-export-${page_id}.md"

    echo "Fetching content from Notion page: $page_id -> $output_file"

    # Export the page as markdown to a temporary file
    notion-exporter "$page_id" -t md > "$temp_file"

    # Post-process: Convert first H1 to Hugo frontmatter
    if grep -q '^# ' "$temp_file"; then
        # Extract the first H1 line and remove the "# " prefix
        TITLE=$(grep -m 1 '^# ' "$temp_file" | sed 's/^# //')

        # Remove only the first H1 line and add frontmatter
        {
            echo "---"
            echo "title: \"$TITLE\""
            echo "---"
            echo ""
            awk 'NR==1,/^# / {if (/^# /) next} {print}' "$temp_file"
        } > "$output_file"
    else
        # No H1 found, just copy the content
        cp "$temp_file" "$output_file"
    fi

    rm "$temp_file"
    echo "✓ Content successfully written to $output_file"
}

# Define your pages here as: "page_id:output_file"
# Get the page ID from your Notion URL: notion.so/Page-Title-<PAGE_ID>
declare -a PAGES=(
    "adaae368056d4376bc2e865ffd153190:content/dell-data-hackathon.md"
    "f5333810af7b4945b560ef633f8998f8:content/mlds-datahack.md"
    "9cfa79384beb4a8d942a00190e344287:content/texas-datahack.md"
    "29034e8e2c75800c89f8de642ff01c8b:content/now.md"
    "29134e8e2c758089accfd86410865e1b:content/books.md"
    "29134e8e2c7580b1a3f0dc77e26474f0:content/tools.md"
)

# Process each page
for page_entry in "${PAGES[@]}"; do
    # Split on colon to get page_id and output_file
    IFS=':' read -r page_id output_file <<< "$page_entry"
    process_notion_page "$page_id" "$output_file"
done

echo ""
echo "All pages processed successfully!"
