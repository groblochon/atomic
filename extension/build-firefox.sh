#!/bin/bash
# Script to prepare the extension for Firefox

# Copy all extension files to a new directory for Firefox
mkdir -p dist-firefox
cp -r background content icons lib options popup README.md dist-firefox/

# Use the specific manifest for Firefox
cp manifest.firefox.json dist-firefox/manifest.json

echo "Firefox extension built in ./dist-firefox"
echo "To load it in Firefox:"
echo "1. Go to about:debugging#/runtime/this-firefox"
echo "2. Click 'Load Temporary Add-on'"
echo "3. Select manifest.json inside the extension/dist-firefox/ folder"
