# SparkHugo Standard Operating Procedure (SOP)

## Project Overview

**SparkHugo** is a modern, lightweight Hugo static site with a warm sunshine-inspired color palette. Built for speed, simplicity, and visual warmth using Hugo v0.151.2+extended and Tailwind CSS v3.4.0.

**Version:** 1.0.0
**Hugo Version:** v0.151.2+extended+withdeploy
**Created:** October 2024
**Theme Inspiration:** Sunny Ottawa days ☀️

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
```css
sunshine-50:  #f0f9ff  /* Lightest sky */
sunshine-100: #e0f2fe  /* Morning sky */
sunshine-200: #bae6fd  /* Clear sky */
sunshine-300: #7dd3fc  /* Bright day */
sunshine-400: #38bdf8  /* Sunny blue */
sunshine-500: #0ea5e9  /* Primary warm blue */
sunshine-600: #0284c7  /* Deep sky */
sunshine-700: #0369a1  /* Evening blue */
sunshine-800: #075985  /* Twilight */
sunshine-900: #0c4a6e  /* Night */
```

### Warm Accents (Secondary)
```css
warm-50:  #fffbeb  /* Cream */
warm-100: #fef3c7  /* Light sand */
warm-200: #fde68a  /* Soft gold */
warm-300: #fcd34d  /* Golden */
warm-400: #fbbf24  /* Amber */
warm-500: #f59e0b  /* Warm orange */
warm-600: #d97706  /* Deep orange */
warm-700: #b45309  /* Bronze */
warm-800: #92400e  /* Brown */
warm-900: #78350f  /* Deep brown */
```

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

## 4. Initial Setup

### 4.1 Project Setup
```bash
# 1. Navigate to project directory
cd /Users/minijohn/Documents/github-repo/sparkhugo2

# 2. Install npm dependencies
npm install

# 3. Build Tailwind CSS
npm run build

# 4. Verify Hugo configuration
hugo config
```

### 4.2 Development Server
```bash
# Start Hugo development server with drafts
hugo server -D

# In another terminal, watch Tailwind CSS changes
npm run dev

# Access site at: http://localhost:1313/
```

## 5. Development Workflow

### 5.1 Creating New Content

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

### 5.2 CSS Development

#### Development Mode (with watching)
```bash
npm run dev
```

#### Production Build (minified)
```bash
npm run build
```

### 5.3 Content Development
- Edit content files in `content/` directory
- Use Markdown for formatting
- Add front matter for metadata
- Use proper heading hierarchy (H1 → H6)
- Add relevant tags for organization

## 6. Build Process

### 6.1 Development Build
```bash
# Build CSS
npm run build

# Build Hugo site (development)
hugo build

# Output in ./public/ directory
```

### 6.2 Production Build
```bash
# Build optimized CSS
npm run build

# Build Hugo site with minification
hugo build --minify

# Output in ./public/ directory
```

### 6.3 Build Verification
```bash
# Check for broken links
hugo build --minify

# Validate HTML (if available)
# No built-in HTML validation, use external tools if needed
```

## 7. Deployment Procedures

### 7.1 GitHub Pages Deployment

#### Option 1: Manual Deployment
```bash
# 1. Build the site
npm run build
hugo build --minify

# 2. The public/ directory contains your site
# 3. Push contents to gh-pages branch:
git add public/
git commit -m "Deploy to GitHub Pages"
git subtree push --prefix public origin gh-pages
```

#### Option 2: GitHub Actions (Automated)
The project includes `.github/workflows/deploy.yml` for automated deployment:

1. **Setup Personal Access Token:**
   - Go to GitHub Settings → Developer settings → Personal access tokens
   - Create new token with `repo` scope
   - Add as repository secret: `PERSONAL_TOKEN`

2. **Deploy Process:**
   - Push to `main` branch triggers automatic deployment
   - Site available at: `https://yoloinfinity55.github.io/`

### 7.2 Alternative Deployment Platforms

#### Netlify Deployment
```bash
# Build command
npm run build && hugo --minify

# Publish directory
public

# Hugo version
0.151.2
```

#### Vercel Deployment
```bash
# Build command
npm run build && hugo --minify

# Output directory
public

# Framework preset
Hugo
```

## 8. Quality Assurance

### 8.1 Testing Checklist

#### Pre-deployment Testing
- [ ] Site builds without errors
- [ ] All links work correctly
- [ ] Mobile responsiveness verified
- [ ] Cross-browser compatibility checked
- [ ] CSS loads correctly
- [ ] Images display properly
- [ ] Forms function correctly (if any)

#### Browser Testing
- [ ] Chrome/Edge (latest)
- [ ] Firefox (latest)
- [ ] Safari (latest)
- [ ] Mobile browsers (iOS Safari, Chrome Mobile)

### 8.2 Performance Validation
```bash
# Check build size
du -sh public/

# Validate HTML (using external tool)
# html5validator --root public/

# Check for broken links
# linkchecker http://localhost:1313/
```

## 9. Troubleshooting

### 9.1 Common Issues

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

#### Build Errors
```bash
# Check Hugo configuration
hugo config

# Validate syntax
hugo build --verbose
```

### 9.2 Debug Mode
```bash
# Enable verbose logging
hugo server -D --verbose

# Check for template errors
hugo build --templateMetrics
```

## 10. Maintenance Procedures

### 10.1 Regular Updates

#### Dependency Updates
```bash
# Update npm packages
npm update

# Check for Hugo updates
hugo version
# Update if newer version available
```

#### Content Maintenance
- Review and update old posts
- Check for broken links monthly
- Update copyright notices annually
- Archive outdated content

### 10.2 Backup Procedures
```bash
# Backup source content
tar -czf sparkhugo-source-$(date +%Y%m%d).tar.gz content/ layouts/ assets/ static/ config.toml

# Backup generated site
tar -czf sparkhugo-public-$(date +%Y%m%d).tar.gz public/
```

## 11. Security Considerations

### 11.1 Content Security
- Validate all external links
- Check for malicious content in posts
- Update dependencies regularly
- Use HTTPS for all external resources

### 11.2 Access Control
- Secure Personal Access Tokens
- Regularly rotate API keys
- Limit repository access
- Monitor deployment logs

## 12. Performance Optimization

### 12.1 Build Optimization
```bash
# Enable parallel builds
hugo build --minify --gc

# Use production settings
hugo build --minify --cleanDestinationDir
```

### 12.2 Asset Optimization
- Minify CSS in production
- Optimize images before adding
- Use Hugo's built-in image processing
- Enable gzip compression

## 13. Best Practices

### 13.1 Development Workflow
- Commit changes regularly
- Use meaningful commit messages
- Test on multiple browsers
- Validate HTML/CSS
- Check mobile responsiveness

### 13.2 Content Management
- Use descriptive titles
- Add relevant tags for organization
- Include summaries for better previews
- Use proper heading hierarchy
- Optimize images before adding

### 13.3 Performance
- Minimize custom CSS
- Use efficient Hugo templates
- Leverage browser caching
- Minimize redirects
- Use CDN for static assets

## 14. Emergency Procedures

### 14.1 Site Down
1. Check if build process works locally
2. Verify deployment configuration
3. Check GitHub Pages settings
4. Review deployment logs
5. Test with manual deployment

### 14.2 Data Loss
1. Restore from recent backup
2. Check git history for lost content
3. Rebuild from source if necessary
4. Update restoration timestamp

## 15. Support Resources

### Documentation
- [Hugo Documentation](https://gohugo.io/documentation/)
- [Tailwind CSS Docs](https://tailwindcss.com/docs)
- [Markdown Guide](https://www.markdownguide.org/)

### Community
- [Hugo Discourse](https://discourse.gohugo.io/)
- [Hugo GitHub](https://github.com/gohugoio/hugo)
- [Tailwind Discord](https://tailwindcss.com/discord)

## 16. Change Log

### Version 1.0.0 (Current)
- Initial release with sunshine color palette
- Responsive navigation with mobile menu
- Blog post support with tags
- Glassmorphism effects and gradient styling
- GitHub Pages deployment setup

---

**Document Version:** 1.0.0
**Last Updated:** October 16, 2024
**Maintained by:** SparkHugo Development Team
**Contact:** [Project Repository](https://github.com/yoloinfinity55/sparkhugo)

*Built with ☀️ in Ottawa, Ontario*
