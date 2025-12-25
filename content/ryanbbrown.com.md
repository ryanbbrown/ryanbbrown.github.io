---

---
[[Texas Datahack]]

[[MLDS Datahack]]

[[Dell Data Hackathon]]

[[now]]

[[tools]]

[[books]]

[[Projects/ryanbbrown.com/Learning to learn]]

[[Historical Tech Cycles]]

END-PAGELIST

[[AI will never master PowerPoint]]

[[gamelog]]

[[nonfiction books]]

> [!note]+ Initial website prompt
> ```markdown
> # General Instructions
> Please help me generate a personal portfolio website. This repo is currently linked to github pages, and it was previously being successfully hosted. You can see the simple site I used to have in the `archive` folder.
> 
> This should be an all-HTML site; I don't want to use any javascript or React. it should be very minimal, with a very dark grey (almost black) background and white and/or light grey text. use a monospaced code-like font.
> 
> # Header
> There should be a header with the following components:
> - On the left, my name in all lowercase (ryan brown)
> - On the right, a list of links (all lowercase as well): 
>     - blog
>     - projects
>     - now
> 
> # Homepage
> (everything centered)
> headshot in circular frame
> 
> large header: Ryan Brown
> tagline below: Full-stack Data Scientist + Engineer - 
> link icons: email, linkedin, github
> - ryanburnettebrown@gmail.com
> - https://www.linkedin.com/in/ryan-b-brown/
> - https://github.com/ryanbbrown
> 
> 
> # Blog
> there doesn't actually need to be a page/content for blog, it should just link to blog.ryanbbrown.com.
> 
> 
> # Projects
> List view of my projects, each one should be in its own rectangle container. Key components: project name, date, quick description, and a link for more details. Use the data below. Note you don't actually need the word "link" for the link, you can represent however you think best.
> 
> Should be a header at the top of the page that says "projects".
> 
> <projects_list>
> **Web Deckbuilding**
> In progress
> Robust sandbox environment for deck-building games, including live multiplayer capabilities. Used to help me quickly iterate on the board game I’m creating.
> https://github.com/ryanbbrown/web-deckbuilding
> 
> **NextWorkout**
> April 2025
> Progressive web app for workout tracking with a unique UI focusing on exercise consistency. Used to manage my chronic pain.
> https://github.com/ryanbbrown/nextworkout
> 
> **Texas Datahack**
> October 2022
> Data hackathon analyzing clickbait for a viral news aggregator. We won first place out of 22 teams.
> [Link](https://www.notion.so/Texas-Datahack-9cfa79384beb4a8d942a00190e344287?pvs=21)
> 
> **The Analyst: Zero to Hero**
> November 2021
> Notebook submission for the 2021 Kaggle ML & DS Survey competition, exploring the ambiguity of the “analyst” job title. Themed as *Kaggle Online*, a role-playing game.
> [Link](https://www.kaggle.com/code/ryanbbrown/the-analyst-zero-to-hero/notebook)
> 
> **MLDS Datahack**
> October 2021
> Data hackathon analyzing song success factors on Spotify. We won first place out of 15 teams.
> [Link](https://www.notion.so/MLDS-Datahack-f5333810af7b4945b560ef633f8998f8?pvs=21) 
> 
> **Content-Based Recommendation Systems**
> January 2021
> Independent research paper exploring recommendation based on book content instead of collaborative filtering. Focused on the 52 books I read in 2020.  
> [Link](https://ryanbbrown.com/files/Supervised%20and%20Unsupervised%20Approaches%20to%20Content-Based%20Recommendation%20Systems.pdf)
> 
> **Dell Data Hackathon**
> October 2020
> Data hackathon predicting COVID infection growth for the holiday season. We won first place out of 12 teams.
> [Link](https://www.notion.so/Dell-Data-Hackathon-adaae368056d4376bc2e865ffd153190?pvs=21)
> 
> 
> # Now
> Header that says "Now"
> [nownownow.com/about](https://nownownow.com/about)
> 
> *Last updated: October 18, 2025*
> 
> I live in New York City and work at Blackstone as a Data Scientist, focused on building agentic AI tools and automated analytics software to support our investors.
> 
> I’m currently working on:
> - A new board game that combines deck building and territory control
> - [web-deckbuilding](https://github.com/ryanbbrown/web-deckbuilding) and [hexmap](https://github.com/ryanbbrown/hex-graph) to help me iterate on my board game more quickly
> - AI-powered redesign of one of my favorite games, Race for the Galaxy
> 
> I have the unreasonable goal of reading every major fantasy series ever written (as per the list from [r/fantasy](https://www.reddit.com/r/Fantasy/comments/1jjif55/rfantasy_top_novels_2025_results/)), and am currently finishing up The Realm of the Elderlings by Robin Hobb.
> 
> A few things I like: 
> - **Productivity**: full tech setup here
> - **Reading**: booklist here
> - **Board Games**: playlog here
> ```

> [!note]+ Local notion pull script (test-notion-fetch.sh)
> ```shell
> #!/bin/bash
> 
> # Local Test Script for Notion Content Fetching
> #
> # Usage:
> #   1. Copy .env.example to .env
> #   2. Fill in your actual Notion credentials in .env
> #   3. Run: ./test-notion-fetch.sh
> 
> set -e
> 
> # Load environment variables from .env file
> if [ -f .env ]; then
>     echo "Loading environment variables from .env file..."
>     export $(cat .env | grep -v '^#' | xargs)
> else
>     echo "Error: .env file not found!"
>     echo "Please copy .env.example to .env and fill in your credentials:"
>     echo "  cp .env.example .env"
>     echo "  # Then edit .env with your actual values"
>     exit 1
> fi
> 
> # Run the fetch script
> echo "Running Notion content fetch..."
> ./fetch-notion-content.sh
> 
> echo ""
> echo "Success! Check content/now.md to see the fetched content."
> 
> ```

> [!note]+ Old version of script
> ```markdown
> #!/bin/bash
> 
> # Notion Export Script
> # This script fetches content from Notion and saves it to multiple markdown files
> #
> # Required environment variables:
> # - NOTION_TOKEN: Your Notion token_v2 cookie value
> # - NOTION_FILE_TOKEN: Your Notion file_token cookie value
> 
> set -e
> 
> # Check for required environment variables
> if [ -z "$NOTION_TOKEN" ]; then
>     echo "Error: NOTION_TOKEN environment variable is not set"
>     echo "Please set it with: export NOTION_TOKEN='your_token_v2_here'"
>     exit 1
> fi
> 
> if [ -z "$NOTION_FILE_TOKEN" ]; then
>     echo "Error: NOTION_FILE_TOKEN environment variable is not set"
>     echo "Please set it with: export NOTION_FILE_TOKEN='your_file_token_here'"
>     exit 1
> fi
> 
> # Function to process a Notion page and convert to Hugo markdown
> # Args: $1 = page_id, $2 = output_file
> process_notion_page() {
>     local page_id="$1"
>     local output_file="$2"
>     local temp_file="/tmp/notion-export-${page_id}.md"
> 
>     echo "Fetching content from Notion page: $page_id -> $output_file"
> 
>     # Export the page as markdown to a temporary file
>     notion-exporter "$page_id" -t md > "$temp_file"
> 
>     # Post-process: Convert first H1 to Hugo frontmatter
>     if grep -q '^# ' "$temp_file"; then
>         # Extract the first H1 line and remove the "# " prefix
>         TITLE=$(grep -m 1 '^# ' "$temp_file" | sed 's/^# //')
> 
>         # Remove only the first H1 line and add frontmatter
>         {
>             echo "---"
>             echo "title: \"$TITLE\""
>             echo "---"
>             echo ""
>             awk 'NR==1,/^# / {if (/^# /) next} {print}' "$temp_file"
>         } > "$output_file"
>     else
>         # No H1 found, just copy the content
>         cp "$temp_file" "$output_file"
>     fi
> 
>     rm "$temp_file"
>     echo "✓ Content successfully written to $output_file"
> }
> 
> # Define your pages here as: "page_id:output_file"
> # Get the page ID from your Notion URL: notion.so/Page-Title-<PAGE_ID>
> declare -a PAGES=(
>     # "adaae368056d4376bc2e865ffd153190:content/dell-data-hackathon.md"
>     # "f5333810af7b4945b560ef633f8998f8:content/mlds-datahack.md"
>     # "9cfa79384beb4a8d942a00190e344287:content/texas-datahack.md"
>     # "29034e8e2c75800c89f8de642ff01c8b:content/now.md"
>     # "29134e8e2c758089accfd86410865e1b:content/books.md"
>     # "29134e8e2c7580b1a3f0dc77e26474f0:content/tools.md"
>     # "29c34e8e2c7580d0828cecf2885bc0ec:content/learning-to-learn.md"
>     "29034e8e2c758016951ad78a805a9dbd:content/meta-page.md"
> )
> 
> # Process each page
> for page_entry in "${PAGES[@]}"; do
>     # Split on colon to get page_id and output_file
>     IFS=':' read -r page_id output_file <<< "$page_entry"
>     process_notion_page "$page_id" "$output_file"
> done
> 
> echo ""
> echo "All pages processed successfully!"
> 
> ```

Note that the following two sites seem to have the the same format? template of some kind? something to consider

- [https://www.vtrivedy.com/posts/claude-code-sdk-haas-harness-as-a-service](https://www.vtrivedy.com/posts/claude-code-sdk-haas-harness-as-a-service)
- [https://steipete.me/posts/just-talk-to-it](https://steipete.me/posts/just-talk-to-it)

[https://shumer.dev/blog](https://shumer.dev/blog) quite similar to mine

```markdown
  - name: "BookRank"
    date: "August 2024"
    description: "Beli, but for books. Django + React + Digital Ocean. Unfinished."
    link: "https://github.com/ryanbbrown/bookrank"
```