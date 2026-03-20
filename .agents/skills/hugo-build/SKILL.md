---
name: hugo-build
description: "Build, serve, update, and manage the Hugo site. Use when: running dev server, production build, updating Hugo or Hextra theme, creating new articles, cleaning build output, or troubleshooting build errors."
---

# Hugo Build & Dev Workflow

## When to Use

- User asks to start the dev server or preview the site
- User asks to build the site for production
- User asks to update Hugo or the Hextra theme
- User asks to create a new article or content page
- User reports build errors or wants to verify the site compiles
- User asks to clean generated files

## Available Commands

All commands are in the root `Makefile`. Always use these — never run raw Hugo commands.

| Command                        | Purpose                                      |
| ------------------------------ | -------------------------------------------- |
| `make dev`                     | Start dev server with drafts on port 1313    |
| `make build`                   | Production build (matches Netlify config)    |
| `make clean`                   | Remove `public/` and `resources/`            |
| `make update`                  | Update Hextra theme to latest via `hugo mod` |
| `make update-hugo`             | Update Hugo via Homebrew                     |
| `make new-article NAME="slug"` | Create article with today's date prefix      |
| `make help`                    | List all available targets                   |

## Procedures

### Start Dev Server

1. Run `make dev`
2. Site opens at http://localhost:1313 with drafts and future posts visible
3. Hugo watches for file changes and live-reloads

### Production Build

1. Run `make clean` first if you want a fresh build
2. Run `make build`
3. Output goes to `public/` — this matches the Netlify build command

### Update Hextra Theme

1. Run `make update`
2. This runs `hugo mod get -u github.com/imfing/hextra` and `hugo mod tidy`
3. Run `make build` to verify the update doesn't break anything
4. Check `go.mod` to confirm the new version

### Update Hugo

1. Run `make update-hugo`
2. This runs `brew update && brew upgrade hugo`
3. Run `make build` to verify compatibility
4. Update `HUGO_VERSION` in `netlify.toml` to match the new version

### Create New Article

1. Run `make new-article NAME="my-post-slug"`
2. This creates `content/articles/YYYY-MM-DD-my-post-slug.md` using the archetype

### Troubleshoot Build Errors

1. Run `make build` and read the error output
2. Common issues:
   - **Template errors mentioning `.Site.Author`**: Hextra version is outdated — run `make update`
   - **Shortcode errors**: Check that `{{< >}}` syntax is correct in content files
   - **Module errors**: Run `hugo mod tidy` to fix dependency issues
