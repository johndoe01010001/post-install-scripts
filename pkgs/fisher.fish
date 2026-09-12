#!/usr/bin/env fish

# set -l is fish's way of setting a local variable that isn't permanently stored in fish's env.
: '
multi-line comment

set -l pkgs \
    patrickf1/fzf.fish \
    oh-my-fish/plugin-bang-bang \
    franciscolourenco/done \
'

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source

#fisher install $pkgs
fisher update # can install pkgs from `~/.config/fish/fish_plugins`, so stow first.

# can only be run from interactive fish shell, instead put in config.fish
# printf "y\n" | fish_config theme save catppuccin-mocha # pipe `y` into the theme save cmd to confirm override if theme already set
