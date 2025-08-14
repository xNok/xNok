#!/bin/bash

# Install Hugo and setup the website
set -e

echo "Installing Hugo and setting up the website..."

# Install Hugo extended version (needed for SCSS/SASS processing in the theme)
HUGO_VERSION="0.136.0"
echo "Installing Hugo Extended v${HUGO_VERSION}..."

# Download and install Hugo Extended using the same method as the GitHub Actions pipeline
cd /tmp
rm -f hugo.deb  # Clean up any existing files
wget -O hugo.deb "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb"
sudo dpkg -i hugo.deb
rm -f hugo.deb

# Verify Hugo installation and extended features
hugo version
if hugo version | grep -i "extended"; then
    echo "✅ Hugo Extended version installed successfully"
else
    echo "❌ Warning: Hugo Extended features may not be available"
    echo "The theme requires SCSS processing, which needs Hugo Extended"
fi

# Clone submodules (themes)
echo "Initializing git submodules..."
cd /workspaces/xNok
git submodule update --init --recursive

# Install Node.js dependencies if package.json exists
if [ -f "website/package.json" ]; then
    echo "Installing Node.js dependencies..."
    cd website
    npm install
    cd ..
fi

echo "Hugo installation and setup completed successfully!"
echo "Hugo version: $(hugo version)"
