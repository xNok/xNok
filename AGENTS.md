# Agent Guidelines & Repository Architecture

This repository serves a dual purpose:
1. **GitHub Profile README**: The root `README.md` acts as the GitHub special profile repository landing page for Alexandre Couëdelo (`xNok`).
2. **Personal Portfolio & Blog**: The `website/` directory contains the Hugo-based static website deployed to GitHub Pages via GitHub Actions.

---

## 1. Repository Structure

```
.
├── README.md                      # GitHub profile README
├── AGENTS.md                      # Agent instructions and repository conventions
├── .github/
│   └── workflows/
│       └── website.yaml           # GitHub Pages build & deployment workflow
└── website/                       # Hugo website root
    ├── hugo.toml                  # Hugo site configuration (taxonomies, theme settings, menus)
    ├── package.json               # NPM scripts for Hugo development & formatting
    ├── archetypes/
    │   └── default.md             # Default archetype for new content
    ├── content/
    │   └── english/
    │       ├── about.md           # About page
    │       └── blogs/             # Markdown blog posts
    ├── themes/editor-hugo/        # Hugo theme
    └── static/                    # Static assets (images, icons, etc.)
```

---

## 2. Blog Post Authoring Guidelines

All English blog posts live under `website/content/english/blogs/`.

### File Naming Convention
- Pattern: `YYYY-MM-DD-kebab-case-title.md`
- Example: `2026-08-21-nix-home-manager-discoveries-and-learnings.md`

### Frontmatter Schema (YAML)
Use YAML frontmatter delimited by `---`:
```yaml
---
title: "Title in Title Case"
date: YYYY-MM-DD
draft: false
categories: ["Development Tools", "DevOps"] # Choose relevant categories (e.g. DevOps, Kubernetes, Security, Development Tools)
tags: ["Nix", "Home-Manager", "Linux", "DevExp"]
images:
- https://miro.medium.com/... # Primary thumbnail / cover image URL (MUST be a list, required by theme widgets)
---
```
> [!IMPORTANT]
> The theme's `recent-post` widget requires `images:` to be a list containing at least one image URL (e.g. `images:\n  - "..."`). Omitting `images:` or using `image: "..."` will cause Hugo template rendering errors (`error calling first: both limit and seq must be provided`).

### Content Layout & Conventions
Each blog post acts as an accessible, structured technical summary/mirror of an article published on Medium, ITNEXT, Level Up Coding, or other publications.
Standard structure:
1. **Original Article Link**: Blockquote at the very top:
   ```markdown
   > Original Article: [Article Title](https://...)
   ```
2. **Summary**: `## Summary` section providing a concise, high-level overview.
3. **Core Sections / Key Concepts**: Structured subsections covering technical highlights, comparisons, code patterns, and practical learnings.
4. **References / Key Takeaways**: `## References` or `## Key Takeaways` linking to relevant repositories (e.g. `infra-bootstrap-tools`), documentation, and related resources.

---

## 3. Build & Development Commands

Inside the `website/` directory:
- `npm run dev` / `hugo server`: Start local development server.
- `npm run build` / `hugo`: Build static site for production.
- `npm run format`: Format code and markdown with Prettier.

---

## 4. GitHub Profile README Maintenance

When new major projects, open source initiatives, or notable repositories are introduced:
- Update the relevant sections in the root `README.md`.
- Keep social and project links consistent across the Profile README and `website/hugo.toml`.
