# dotfiles

My terminal configuration - designed to be minimal yet helpful. We don't need to throw hundreds of plugins at the wall to use a terminal, but we can make life a bit easier.

- Managed via GNU Stow
- Compatible with Linux & MacOS
- Includes configuration for: `zsh`, `p10k`, `tmux`, and `neovim`

Snippet to populate configuration files:
```bash
cd ~
brew install stow
git clone git@github.com:Jellayy/dotfiles.git && cd dotfiles
stow .
```

## zsh + p10k

### Configurations

- Minimal `powerlevel10k` theme
- `zinit` for plugin management
- `zsh-vi-mode` plugin
- `zsh-syntax-highlighting` and `zsh-autosuggestions` plugins
- File-based persistent history

## Tmux

### Configurations

- Changed prefix to: `ctrl+space`
- Bound `ctrl+hjkl` to pane navigation
- Set window index to start at `1`
- Set new panes to open in current directory
- Install `minimal-tmux-status` theme via `tpm`

### Additional Instructions

1. Install tmux & tpm
    ```bash
    brew install tmux
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux
    tmux source ~/.config/tmux/tmux.conf
    ```

2. Fetch TPM Plugins by pressing `prefix` + `I` while in tmux

## neovim