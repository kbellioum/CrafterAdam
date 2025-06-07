# CrafterAdam

This repository contains the source for the CrafterAdam website.

## Netlify Deployment

Netlify builds require a modern build image. The configuration in `netlify.toml` sets the build image to **focal** (Ubuntu 20.04). If your Netlify project is still using the deprecated Trusty image, ensure that this repository's configuration file is committed and that the project's build settings are updated accordingly.

## Google Maps API Key

The `map.html` page requires a Google Maps API key. Set an environment variable
named `GOOGLE_MAPS_API_KEY` when building the site. On Netlify this can be
configured in the build settings. During the build the variable is injected into
`map.html` via `envsubst` so the deployed page includes the key.
