# DevContainer Setup for SSH Deploy Key

## Environment Variable Setup

To properly clone the theme submodule, you need to set the `SSH_DEPLOY_KEY_EDITOR_THEME` environment variable with your SSH private key.

### Setting up the environment variable:

1. **For GitHub Codespaces:**
   - Go to your repository settings
   - Navigate to Secrets and variables → Codespaces
   - Add a new secret named `SSH_DEPLOY_KEY_EDITOR_THEME`
   - Paste your SSH private key content as the value

2. **For local development with Dev Containers:**
   - Create a `.env` file in the `.devcontainer` directory (this file is gitignored)
   - Add the following line:
     ```
     SSH_DEPLOY_KEY_EDITOR_THEME="-----BEGIN OPENSSH PRIVATE KEY-----
     your-private-key-content-here
     -----END OPENSSH PRIVATE KEY-----"
     ```

3. **For VS Code Dev Containers:**
   - You can also set the environment variable in your `devcontainer.json` under `containerEnv` (not recommended for security)
   - Or use Docker secrets/build args

## What happens during container creation:

1. The `onCreateCommand` runs the SSH setup script
2. The script configures SSH with your deploy key
3. The `postCreateCommand` clones the theme submodule using SSH
4. Your Hugo site will have access to the theme

## Troubleshooting:

- If the submodule fails to clone, check that `SSH_DEPLOY_KEY_EDITOR_THEME` is properly set
- Ensure the SSH key has read access to the `mekitmedia/gethugothemes-editor` repository
- Check the devcontainer logs for any SSH-related errors
