---
title: "SparkHugo Standard Operating Procedure (SOP) - Complete Guide"
date: 2024-10-16T15:53:18-04:00
draft: false
tags: ["hugo", "web-development", "tailwind", "documentation", "sop", "guide"]
---

# SparkHugo Standard Operating Procedure (SOP) - Complete Guide

Welcome to the comprehensive operational guide for **SparkHugo**! This document serves as the complete Standard Operating Procedure for developing, maintaining, and deploying the SparkHugo static site.

## Introduction

**SparkHugo** is a modern, lightweight Hugo static site with a warm sunshine-inspired color palette. Built for speed, simplicity, and visual warmth using Hugo v0.151.2+extended and Tailwind CSS v3.4.0.

**Version:** 1.0.0
**Hugo Version:** v0.151.2+extended+withdeploy
**Created:** October 2024
**Theme Inspiration:** Sunny Ottawa days ☀️

> This SOP was automatically generated based on the project specification and serves as both documentation and a blog post for reference.

## 1. Project Structure

```
sparkhugo/
├── assets/css/tailwind.css      # Source Tailwind styles
├── content/                     # Site content
│   ├── _index.md               # Homepage content
│   ├── about.md                # About page
│   └── posts/                  # Blog posts
├── layouts/                    # Hugo templates
│   ├── _default/              # Base layouts
│   ├── partials/              # Reusable components
│   └── index.html             # Homepage template
├── static/css/styles.css       # Compiled Tailwind CSS
├── config.toml                # Hugo configuration
├── tailwind.config.js         # Tailwind configuration
├── postcss.config.js          # PostCSS configuration
└── package.json               # Node dependencies
```

## 2. Color Palette & Design System

### Sunshine Blues (Primary)
- `sunshine-50`: #f0f9ff (Lightest sky)
- `sunshine-100`: #e0f2fe (Morning sky)
- `sunshine-200`: #bae6fd (Clear sky)
- `sunshine-300`: #7dd3fc (Bright day)
- `sunshine-400`: #38bdf8 (Sunny blue)
- `sunshine-500`: #0ea5e9 (Primary warm blue)
- `sunshine-600`: #0284c7 (Deep sky)
- `sunshine-700`: #0369a1 (Evening blue)
- `sunshine-800`: #075985 (Twilight)
- `sunshine-900`: #0c4a6e (Night)

### Warm Accents (Secondary)
- `warm-50`: #fffbeb (Cream)
- `warm-100`: #fef3c7 (Light sand)
- `warm-200`: #fde68a (Soft gold)
- `warm-300`: #fcd34d (Golden)
- `warm-400`: #fbbf24 (Amber)
- `warm-500`: #f59e0b (Warm orange)
- `warm-600`: #d97706 (Deep orange)
- `warm-700`: #b45309 (Bronze)
- `warm-800`: #92400e (Brown)
- `warm-900`: #78350f (Deep brown)

## 3. Prerequisites

### Required Software
- **Hugo:** v0.151.2+extended+withdeploy
- **Node.js:** v22.20.0+
- **npm:** 11.6.1+

### Verification Commands
```bash
hugo version    # Should show v0.151.2+
node --version  # Should show v22.20.0+
npm --version   # Should show 11.6.1+
```

## 4. Quick Start Guide

### Initial Setup
```bash
# Navigate to project directory
cd /Users/minijohn/Documents/github-repo/sparkhugo2

# Install npm dependencies
npm install

# Build Tailwind CSS
npm run build

# Verify Hugo configuration
hugo config
```

### Development Server
```bash
# Start Hugo development server with drafts
hugo server -D

# In another terminal, watch Tailwind CSS changes
npm run dev

# Access site at: http://localhost:1313/
```

## 5. Development Workflow

### Creating New Content

#### New Blog Post
```bash
hugo new posts/my-new-post.md
```

#### New Page
```bash
hugo new about.md
```

#### Front Matter Template
```toml
+++
title = "Post Title"
date = 2024-10-16T14:30:00Z
tags = ["tag1", "tag2", "tag3"]
draft = false
+++

Your content here...
```

## 6. Build Process

### Development Build
```bash
# Build CSS
npm run build

# Build Hugo site (development)
hugo build

# Output in ./public/ directory
```

### Production Build
```bash
# Build optimized CSS
npm run build

# Build Hugo site with minification
hugo build --minify

# Output in ./public/ directory
```

## 7. Deployment

### GitHub Pages (Automated)
The project includes GitHub Actions workflow for automated deployment:

1. **Setup Personal Access Token:**
   - Go to GitHub Settings → Developer settings → Personal access tokens
   - Create new token with `repo` scope
   - Add as repository secret: `PERSONAL_TOKEN`

2. **Deploy Process:**
   - Push to `main` branch triggers automatic deployment
   - Site available at: `https://yoloinfinity55.github.io/`

### Alternative Platforms

#### Netlify
- Build command: `npm run build && hugo --minify`
- Publish directory: `public`
- Hugo version: `0.151.2`

#### Vercel
- Build command: `npm run build && hugo --minify`
- Output directory: `public`
- Framework preset: Hugo

## 8. Quality Assurance

### Testing Checklist
- [ ] Site builds without errors
- [ ] All links work correctly
- [ ] Mobile responsiveness verified
- [ ] Cross-browser compatibility checked
- [ ] CSS loads correctly
- [ ] Images display properly

### Browser Testing
- [ ] Chrome/Edge (latest)
- [ ] Firefox (latest)
- [ ] Safari (latest)
- [ ] Mobile browsers (iOS Safari, Chrome Mobile)

## 9. Troubleshooting

### Common Issues

#### CSS Not Loading
```bash
# Rebuild Tailwind CSS
npm run build

# Clear Hugo cache
hugo --gc

# Restart development server
hugo server -D
```

#### Module Errors
```bash
# Clean and update Hugo modules
hugo mod clean
hugo mod get -u
```

#### Port Already in Use
```bash
# Use different port
hugo server -D --port 1314
```

## 10. Best Practices

### Development Workflow
- Commit changes regularly
- Use meaningful commit messages
- Test on multiple browsers
- Validate HTML/CSS
- Check mobile responsiveness

### Content Management
- Use descriptive titles
- Add relevant tags for organization
- Include summaries for better previews
- Use proper heading hierarchy
- Optimize images before adding

## 11. Support Resources

### Documentation
- [Hugo Documentation](https://gohugo.io/documentation/)
- [Tailwind CSS Docs](https://tailwindcss.com/docs)
- [Markdown Guide](https://www.markdownguide.org/)

### Community
- [Hugo Discourse](https://discourse.gohugo.io/)
- [Hugo GitHub](https://github.com/gohugoio/hugo)
- [Tailwind Discord](https://tailwindcss.com/discord)

## Conclusion

This SOP provides comprehensive guidance for working with SparkHugo. Whether you're a developer, maintainer, or just curious about the project structure, this document serves as your complete reference guide.

The combination of Hugo's static site generation with Tailwind's utility-first CSS approach creates a fast, maintainable, and beautiful website with a warm, sunshine-inspired design that reflects the spirit of Ottawa's sunny days.

---

**Document Version:** 1.0.0
**Last Updated:** October 16, 2024
**Project Repository:** [github.com/yoloinfinity55/sparkhugo](https://github.com/yoloinfinity55/sparkhugo)

*Built with ☀️ in Ottawa, Ontario*
