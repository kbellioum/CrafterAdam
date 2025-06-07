# CrafterAdam

This repository contains the source for the CrafterAdam website.

## Netlify Deployment

Netlify builds require a modern build image. The configuration in `netlify.toml` sets the build image to **focal** (Ubuntu 20.04). If your Netlify project is still using the deprecated Trusty image, ensure that this repository's configuration file is committed and that the project's build settings are updated accordingly.

## Local Development

To preview the site locally, use a static server such as [serve](https://www.npmjs.com/package/serve). With Node.js installed, run:

```bash
npx serve
```

This will start a local server and provide a URL (defaults to `http://localhost:3000`) where you can browse the site.
