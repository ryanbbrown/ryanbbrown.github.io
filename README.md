# ryanbbrown.github.io

Personal website built with Hugo.

## Content Management

Content files live in `content/` and are edited via Obsidian through symlinks.

### Initial Setup (one-time)

```bash
./initial-symlinks.sh <obsidian-vault-folder>
```

Creates symlinks in your Obsidian vault pointing to each `content/*.md` file.

### Ongoing Workflow

1. Edit pages in Obsidian (via symlinks)
2. Double-click `sync-website.command` on Desktop to sync and deploy

The command runs `update-symlinks.sh`, commits changes, and pushes to GitHub.

See `sync-website.command.example` for a template — copy to Desktop and update paths.

#### What `update-symlinks.sh` does

- Moves new `.md` files from vault → `content/`, creates symlink back
- Deletes `content/` files whose symlinks were removed from vault

## Local Development

```bash
hugo server     # Run dev server at http://localhost:1313
```
