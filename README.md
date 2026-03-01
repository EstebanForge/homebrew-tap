# EstebanForge’s Homebrew Tap

Homebrew tap for shipping my CLI tools for Linux and macOS

## Install

```bash
brew tap EstebanForge/tap
```

## Install Packages

```bash
# formula
brew install EstebanForge/tap/<name>

# cask
brew install --cask EstebanForge/tap/<name>
```

## Packages

### Formulae

- `construct-cli` — Secure loading program (sandbox) for AI Agents
- `mcp-cli-ent` — Context-guardian CLI for MCP servers

### Casks

- `example-app` — Description of your example app (Placeholder)

## Repository Templates

The `workflow-release/` directory contains GitHub Action templates for my CLI tool repositories. These templates:
1. Build and package the tool for all platforms.
2. Create a "Universal" macOS binary for Homebrew compatibility.
3. Automatically notify this tap to update the formula on every release.

To use them:
- Copy the relevant `.yml` to `.github/workflows/release.yml` in the relevant tool repository.
- Add a `TAP_GITHUB_TOKEN` secret to your tool repository (PAT with `repo` scope).

## One-Time Setup

To enable automation between your tool repositories and this tap:

### 1. Create a GitHub Personal Access Token (PAT)
1. Go to [GitHub Settings > Developer Settings > Personal Access Tokens > Fine-grained tokens](https://github.com/settings/tokens?type=beta).
2. Click **Generate new token**.
3. Name it `Homebrew Tap Update Token`.
4. Set **Repository access** to "Only select repositories" and select:
   - `EstebanForge/homebrew-tap`
   - Your tool repositories (e.g., `mcp-cli-ent`, `construct-cli`).
5. Under **Permissions**, select **Actions** (Read and Write) and **Metadata** (Read-only).
6. Generate and **copy the token**.

### 2. Add the Secret to your Tool Repositories
For **each** tool repository (e.g., `mcp-cli-ent`):
1. Go to **Settings > Secrets and variables > Actions**.
2. Click **New repository secret**.
3. Name: `TAP_GITHUB_TOKEN`.
4. Value: Paste your PAT.

## Setup & Integration

To add a new CLI tool to this tap and enable automated updates:

1.  **Create Formula**: Add a `.rb` file in `Formula/` (use `mcp-cli-ent.rb` as a template).
2.  **Add Workflow**: Copy the appropriate template from `workflow-release/` to your tool's repository at `.github/workflows/release.yml`.
3.  **Configure Secrets**:
    *   Create a **Personal Access Token (PAT)** with `repo` permissions.
    *   In the relevant tool repository, go to `Settings > Secrets and variables > Actions`.
    *   Add a new repository secret named `TAP_GITHUB_TOKEN` with your PAT as the value.

Once configured, pushing a new stable version tag (e.g., `1.0.0`) to the relevant tool repository will automatically update the formula in this Homebrew tap.

## Update / Uninstall

```bash
brew update
brew upgrade

brew uninstall <formula>
brew uninstall --cask <cask>
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
