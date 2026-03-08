#!/usr/bin/env bash
# Sync published blog posts from the local Obsidian vault to Astro content.
# Usage: ./sync.sh [vault_path]

VAULT_POSTS="${1:-../Vault/5 Blog/posts}"
BLOG_CONTENT="src/content/blog"

cd "$(dirname "$0")" || exit 1

if [ ! -d "$VAULT_POSTS" ]; then
  echo "Vault not found (CI or no vault). Skipping sync."
  exit 0
fi

count=0
for file in "$VAULT_POSTS"/*.md "$VAULT_POSTS"/*.mdx; do
  [ -f "$file" ] || continue
  cp "$file" "$BLOG_CONTENT/"
  count=$((count + 1))
done

echo "Synced $count post(s) from vault to $BLOG_CONTENT"
