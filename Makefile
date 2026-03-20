.PHONY: dev build clean update update-hugo help

# Default target
help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

dev: ## Start dev server with drafts and open browser
	hugo server --buildDrafts --buildFuture --port 1313

build: ## Production build (matches Netlify config)
	hugo --gc --minify

clean: ## Remove generated files and Hugo cache
	rm -rf public resources

update: ## Update Hextra theme to latest version
	hugo mod get -u github.com/imfing/hextra
	hugo mod tidy

update-hugo: ## Update Hugo via Homebrew
	brew update && brew upgrade hugo

new-article: ## Create a new article (usage: make new-article NAME="my-post-title")
	hugo new content/articles/$$(date +%Y-%m-%d)-$(NAME).md
