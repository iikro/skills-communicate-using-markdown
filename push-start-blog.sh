#!/usr/bin/env bash
set -euo pipefail

# Script para criar/trocar para a branch start-blog, garantir day-1.md
# e comitar/pushar para origin

echo "Estado inicial:"
git status --short || true

CURRENT_BRANCH=$(git branch --show-current 2>/dev/null || true)
echo "Branch atual: ${CURRENT_BRANCH}"

echo "Remotes:"
git remote -v || true

# Create or switch to branch
if git show-ref --verify --quiet refs/heads/start-blog; then
  echo "Branch 'start-blog' já existe localmente — trocando para ela"
  git checkout start-blog
else
  echo "Criando e trocando para 'start-blog'"
  git checkout -b start-blog
fi

# Ensure file content
cat > day-1.md <<'EOF'
# Daily Learning

## Morning Planning

- [ ] Check out the [github blog](https://github.blog/) for topic ideas.
- [ ] Learn about [GitHub Pages](https://skills.github.com/#first-day-on-github).
- [ ] Convert my first blog post into an actual webpage.

## Review
EOF


echo "Arquivo day-1.md gravado."

# Stage and commit
git add day-1.md

if git diff --staged --quiet; then
  echo "Nenhuma mudança para commitar."
else
  git commit -m "Add markdown headings and morning tasks"
fi

# Push branch
git push -u origin start-blog

echo "Push concluído para origin/start-blog"

echo "Branch atual: $(git branch --show-current)"
echo "Conteúdo de day-1.md:"
cat day-1.md

echo "Último commit:"
git log -1 --pretty=format:"%h %s" || true
