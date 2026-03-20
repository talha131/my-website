# AGENTS.md

## Who You Are Working With

Talha is a university professor in Karachi, Pakistan. He teaches ICT and Computer Literacy to B.Ed. students. He is knowledgeable, moves fast, and does not need things explained back to him. Keep responses short and direct.

## The Project

Hugo static site using the [Hextra](https://imfing.github.io/hextra/) theme. Hextra is imported as a Go module. Deployed on Netlify.

- **Hugo config**: `hugo.yaml` (YAML, not TOML)
- **Theme**: `github.com/imfing/hextra` (Go module in `go.mod`)
- **Deploy**: Netlify (`netlify.toml`)
- Hugo installed via Homebrew on macOS

## Build and Dev

All commands are in the root `Makefile`. Always use `make` targets — never run raw Hugo commands.

- `make dev` — Start dev server with drafts on port 1313
- `make build` — Production build (matches Netlify)
- `make clean` — Remove `public/` and `resources/`
- `make update` — Update Hextra theme to latest
- `make update-hugo` — Update Hugo via Homebrew
- `make new-article NAME="slug"` — Scaffold a new article with today's date
- `make help` — List all targets

## Content Structure

- `content/articles/` — Blog posts, filename pattern: `YYYY-MM-DD-slug.md`
- `content/Computer Literacy Study Guide/` — Study guide sections with nested topics
- `content/ICT Study Guide/` — ICT course material with nested topics
- Section indexes are `_index.md` — do not modify unless asked

## Conventions

- Hugo shortcodes like `{{< callout >}}` and `{{< tabs >}}` are used throughout — preserve them exactly
- YAML frontmatter: keep `title`, `slug`, `weight`, `linktitle` as-is unless asked to change
- Content targets B.Ed. students in Karachi, Pakistan — Pakistani context matters
- Writing style: avoid AI-sounding words (see `Anti-AI Writing Style.md` in the ICT assignments folder)

## Hugo/Hextra Specifics

- Hextra version is tracked in `go.mod` — update via `make update`, not manually
- Config is YAML (`hugo.yaml`), not TOML
- Run `make build` to verify changes compile correctly

## Subfolder Context

Some subfolders have their own `AGENTS.md` or `CLAUDE.md` with folder-specific instructions. Read those before working in that folder.
