#!/usr/bin/env bash

set -euo pipefail

# inside $() is a sub-shell.
# `"$0"` is where the script is invoked from, e.g. `./Linux/install_script/install.sh`.
# `dirname -- "$0"` removes the last part/filename, returning only the dir.
# cd into this dir
# && pwd prints path (invisible because in sub-shell), which is then saved into the script_dir var.

script_dir="$(cd -- "$(dirname -- "$0")" && pwd)"

cd "$script_dir/pkgs"

if command -v apt > /dev/null 2>&1; then
	./apt.sh

elif command -v dnf > /dev/null 2>&1; then
	./dnf.sh

elif command -v pacman > /dev/null 2>&1; then
	./pacman.sh

elif command -v rpm-ostree > /dev/null 2>&1; then
	./rpm-ostree.sh
	./brew.sh

else
	echo "Unsupported package manager"
	exit 1
fi

./flatpak.sh

# Stow before running fisher install because we use fisher_plugins
cd "$script_dir/dotfiles"
./stow.sh

cd "$script_dir/pkgs"
./fisher.fish

chsh -s "$(command -v fish)"
