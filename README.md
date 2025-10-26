# ryanbbrown.github.io

Personal website built with Hugo and synced with Notion content.

## Core Files

- **hugo.toml** - Hugo site configuration
- **static/styles.css** - Custom site styles
- **fetch-notion-content.sh** - Script that fetches Notion pages and converts them to Hugo markdown, uses [notion-exporter](https://github.com/yannbolliger/notion-exporter)
- **Hard-coded files:** `projects.md`, `_index.html`

## How It Works

1. GitHub Actions runs on every push to master
2. The workflow installs notion-exporter and runs fetch-notion-content.sh
3. Notion pages are fetched and converted to markdown in the content/ folder
4. Hugo builds the static site, which is then deployed to GitHub Pages

## Local Development

```bash
hugo server     # Run dev server at http://localhost:1313
```
