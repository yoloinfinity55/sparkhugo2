# sparkhugo — Hugo + Tailwind CSS v3 starter
This repository scaffold (sparkhugo) contains a minimal Hugo blog configured to use **Tailwind CSS v3**.
It also includes Bash helper scripts to create, build, and deploy the site and a GitHub Actions workflow
that can build & (optionally) push the generated site to a **GitHub Pages** repository `yoloinfinity55/yoloinfinity55.github.io`.

## What's included
- `config.toml` — Hugo config with `baseURL` set to `https://yoloinfinity55.github.io/`
- `assets/css/tailwind.css` — Tailwind entry file
- `layouts/` — simple Hugo layouts (baseof, index, single)
- `content/` — sample homepage and one post
- `package.json`, `tailwind.config.js`, `postcss.config.js`
- `create_sparkhugo.sh` — scaffolding script to (re)generate files locally
- `build.sh` — build CSS with Tailwind CLI + run `hugo`
- `deploy.sh` — push `public/` to a GitHub Pages repo (convenience script)
- `.github/workflows/deploy.yml` — example GitHub Actions workflow that builds and pushes to `yoloinfinity55/yoloinfinity55.github.io` (requires a PAT secret; see notes)

## Quick local setup (short)
1. Install prerequisites locally: `hugo` (recommended: Hugo Extended), `node` (>=16), `npm`.
2. From the project root:
   ```bash
   bash create_sparkhugo.sh   # creates files (safe to re-run)
   npm install               # install tailwind+postcss dev deps
   bash build.sh             # builds CSS and runs hugo -> public/
   ```
3. Preview locally: `hugo server -D` then open http://localhost:1313/

## Deploy to `yoloinfinity55.github.io`
There are two options:
- **Manual**: create a repo named `yoloinfinity55.github.io` and push the contents of `public/` to its `main` branch (or `gh-pages`), then enable Pages in repo settings.
- **Automated (GitHub Actions)**: Use the included workflow `.github/workflows/deploy.yml`. It uses a personal access token stored as repository secret `PERSONAL_TOKEN` to push generated files to `yoloinfinity55/yoloinfinity55.github.io` (see the README section below for setup).

## Important notes
- This scaffold does **not** install Hugo or Node for you. Run the commands locally and ensure versions are compatible.
- Tailwind CSS v3 is used in the `package.json` devDependencies; adjust versions if you want v4+.
- The workflow included demonstrates a common pattern: build the site then commit the `public/` output to the Pages repo. You will need to create a Personal Access Token with `repo` scope and add it as `PERSONAL_TOKEN` in the source repo's Settings → Secrets → Actions.

## Files overview
See the repository root for scripts and `.github/workflows/deploy.yml` for the CI/CD example.

---
Generated automatically as a downloadable starter by ChatGPT.
