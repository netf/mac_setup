# Development Environment Setup

This repository contains the configuration for a powerful development environment optimized for DevOps and software engineering tasks. It includes custom configurations for Zsh, Tmux, and various CLI tools, along with a curated list of homebrew packages and VSCode extensions.

## Key Components

1. **Zsh**: Configured with Oh My Zsh and Powerlevel10k theme
2. **Tmux**: Enhanced terminal multiplexer setup
3. **Homebrew**: Package manager for macOS
4. **VSCode**: Code editor with essential extensions
5. **Git**: Version control with custom aliases and configurations

## Installation

The environment is set up using Ansible playbooks. To install:

```bash
ansible-playbook main.yml
```

## Zsh Configuration

The Zsh setup includes:
- Oh My Zsh with Powerlevel10k theme
- Custom plugins for git, docker, kubectl, etc.
- Aliases for common operations
- Advanced git functions

### Key Zsh Commands

- `zshconfig`: Edit Zsh configuration
- `gits`: Git status
- `gitd`: Git diff
- `gitl`: Git log with graph
- `gswitch`: Interactive branch switching
- `codesearch`: Search code with ripgrep and fzf
- `weather [location]`: Get weather information
- `mkcd [directory]`: Create and cd into a directory

## Tmux Configuration

Tmux is configured for enhanced productivity with:
- Custom key bindings
- Plugin support via TPM
- Catppuccin theme integration

### Key Tmux Commands

- `Ctrl+Space`: Tmux prefix key
- `M-H` / `M-L`: Switch to previous/next window
- `Ctrl+Space r`: Reload tmux configuration
- `Ctrl+Space I`: Install tmux plugins

## Homebrew Packages

Essential CLI tools installed include:
- `exa`: Modern replacement for `ls`
- `bat`: Cat clone with syntax highlighting
- `fzf`: Fuzzy finder
- `ripgrep`: Fast grep replacement
- `git-delta`: Better git diffs

## VSCode Extensions

Recommended extensions include:
- GitHub Copilot
- Docker
- Kubernetes
- Terraform
- GitLens

## Git Configuration

Custom git aliases and configurations are set up, including:
- `git lg`: Pretty git log
- Conventional commit helper: `gitcc`

## Usage Examples

1. Fuzzy find and switch git branches:
   ```
   gswitch
   ```

2. Interactive git stash management:
   ```
   gstash
   ```

3. Search code with preview:
   ```
   codesearch "function"
   ```

4. Create a new tmux session:
   ```
   tmux new -s mysession
   ```

5. Generate a secure password:
   ```
   genpass 16
   ```

## Customization

- Zsh: Edit `~/.zshrc`
- Tmux: Edit `~/.tmux.conf`
- Git: Use `git config --global` or edit `~/.gitconfig`

## Maintenance

- Update Homebrew packages: `brew update && brew upgrade`
- Update Oh My Zsh: `omz update`
- Update tmux plugins: `Ctrl+Space U` in a tmux session

## Contributing

Feel free to fork this repository and customize it for your needs. Pull requests for improvements are welcome!