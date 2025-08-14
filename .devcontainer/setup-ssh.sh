#!/bin/bash

# Setup SSH key for accessing private repositories
set -e

echo "Setting up SSH key for theme submodule..."

# Create .ssh directory if it doesn't exist
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# Check if SSH_DEPLOY_KEY_EDITOR_THEME is set
if [ -z "$SSH_DEPLOY_KEY_EDITOR_THEME" ]; then
    echo "Warning: SSH_DEPLOY_KEY_EDITOR_THEME environment variable is not set"
    echo "Please set this variable with your SSH private key content"
    exit 1
fi

# Write the SSH private key to a file
echo "$SSH_DEPLOY_KEY_EDITOR_THEME" > ~/.ssh/id_rsa_editor_theme
chmod 600 ~/.ssh/id_rsa_editor_theme

# Create SSH config to use specific key for GitHub
cat > ~/.ssh/config << EOF
Host github.com-editor-theme
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_editor_theme
    IdentitiesOnly yes
    StrictHostKeyChecking no
EOF

chmod 600 ~/.ssh/config

# Update git config to use the SSH alias for the submodule
git config submodule.website/themes/editor-hugo.url git@github.com-editor-theme:mekitmedia/gethugothemes-editor.git

echo "SSH key setup completed successfully!"
