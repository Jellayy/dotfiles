# dotfiles

My terminal configuration files - managed with GNU Stow.

The main branch is oriented towards MacOS but should work on any UNIX Setup.

Includes configurations for: zsh, p10k, tmux, nvim (Astronvim)

Snippet to populate configuration files:
```bash
cd ~
brew install stow
git clone git@github.com:Jellayy/dotfiles.git && cd dotfiles
stow .
```

## Tmux

My tmux config uses the tpm package manager, which must be installed before the tmux.config file is referenced. Of course, tmux must also be installed.

```bash
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
