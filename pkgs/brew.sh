#!/usr/bin/env bash

set -euo pipefail

pkgs=(
	# Better
	btop
	ripgrep
	eza
	fish
	bat
	fd
	zoxide
	fzf
	gdu # alias to gdu, default is gdu-go
	duf
	procs

	# Essential
	starship
	fastfetch
	tmux
	micro
	tlrc
	stow
	jq
	yq

	# Networking
	bind
	iperf3
	netcat
	nmap
	#wireshark # Only CLI. wireshark-app requries macOS
	sshfs

	# Dev
	git
	git-filter-repo
	git-delta
	gh
	podman
	podman-compose
	#dotnet-sdk # Requires macOS
	uv
)

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install -y "${pkgs[@]}"
