# Installation

This repo houses all my post-installation scripts for packages across:

- apt
- pacman
- dnf
- rpm-ostree
- flatpak
- fish

The `stow.sh` script stows dotfiles in both `~/.config/` and `~/.local/` for system-wide installed packages and `~/.var/app/` for flatpaks.
Thus, configurations live across system packages and flatpaks, should they be installed differently by the user.

Ensure you copy the repo to a path that is always available, i.e. not network share, not /tmp or ~/Downloads, where you may accidentally delete it.
Default path is `~/post-install-scripts`.

## Linux

```bash
git clone https://github.com/Magnuswlange/post-install-scripts.git
cp -r post-install-scripts/  ~/post-install-scripts
cd ~/post-install-scripts
./bootstrap.sh
```

## On WSL

1) Follow the Linux installation instructions.
2) Add symlinks for any GUI apps running on Windows that need to use the Linux dotfiles, e.g. Zed.

### Example: Zed

```ps
Remove-Item -LiteralPath "$env:APPDATA\Zed\settings.json"
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\Zed\settings.json" -Target "\\wsl.localhost\Ubuntu\home\mala\dotfiles\zed\.config\zed\settings.json"

Remove-Item -LiteralPath "$env:APPDATA\Zed\keymap.json"
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\Zed\keymap.json" -Target "\\wsl.localhost\Ubuntu\home\mala\dotfiles\zed\.config\zed\keymap.json"
```

## Notes

- nmap can be replaced with zenmap for a GUI.
- Have yet to test if setting fish shell as default works, path differs in brew install: `chsh -s "$(command -v fish)"`
- system package and flatpak configuration files are hard-copies, symlink them to ensure singular source of truth.
