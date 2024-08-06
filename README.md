## Requirements

- [wezterm](https://wezfurlong.org/wezterm/): crossplatform terminal with multiplexer
- [chezmoi](https://www.chezmoi.io/): tool to easily save and manage dotfiles
- [fzf](https://github.com/junegunn/fzf): a helper for several tools like reverse search, git, etc.
- [antigen](https://antigen.sharats.me/): zsh really fast plugin manager
- [Lazygit](https://github.com/jesseduffield/lazygit): a shell Git gui that is used by LazyVim
- [Lazyvim](https://www.lazyvim.org/): neovim with all bells and whistles

## Manual changes

### selected zsh theme requires special font

As I'm using Powerlevel10k, it may uses several icons that are available only in few fonts. Read
Powerlevel10k installation guide to properly setup MesloGS font.

### antigen completion

You may need to manually create the completion folder for antigen:
`mkdir $ZSH_CACHE_DIR/completions`

### finish fzf configuration

If fzf throw an error related to key-bindings, it means you have to finish the installation. Do this:
`$(brew --prefix)/opt/fzf/install`
