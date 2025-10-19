#!/bin/bash

# Local Test Script for Notion Content Fetching
#
# Usage:
#   1. Copy .env.example to .env
#   2. Fill in your actual Notion credentials in .env
#   3. Run: ./test-notion-fetch.sh

set -e

# Load environment variables from .env file
if [ -f .env ]; then
    echo "Loading environment variables from .env file..."
    export $(cat .env | grep -v '^#' | xargs)
else
    echo "Error: .env file not found!"
    echo "Please copy .env.example to .env and fill in your credentials:"
    echo "  cp .env.example .env"
    echo "  # Then edit .env with your actual values"
    exit 1
fi

# Run the fetch script
echo "Running Notion content fetch..."
./fetch-notion-content.sh

echo ""
echo "Success! Check content/now.md to see the fetched content."
