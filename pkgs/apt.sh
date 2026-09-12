#!/usr/bin/env bash

set -euo pipefail

# sherlock https://github.com/sherlock-project/sherlock or detectdee https://github.com/Yvesssn/DetectDee

pkgs=(
	# Better
	btop
	ripgrep
	eza
	fish
	bat
	fd-find
	zoxide
	fzf
	gdu
	dfu
	procs
	
	# Essential
	starship
	fastfetch	
	tmux
	flatpak
	libfuse3-4
	libfuse2t64
	micro
	tealdeer
	nfs-common
	stow
	jq
	yq
	#ghostty # Not in official Debian repos, but is in Ubuntu.

	# Networking
	bind9-dnsutils # dig
	iperf3
	ncat
	nmap
	wireshark
	sshfs
	
	# Dev
	git
	git-delta
	git-filter-repo
	gh
	distrobox
	podman
	podman-compose
	#dotnet-sdk # Needs specific version
	# winboat

	# Gaming
	gamemode
)

sudo apt update
sudo apt upgrade -y
sudo apt install -y "${pkgs[@]}"
sudo apt autoremove

# Ghostty
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/mkasberg/ghostty-ubuntu/HEAD/install.sh)"

# UV
curl -LsSf https://astral.sh/uv/install.sh | sh

# Tailscale
curl -fsSL https://tailscale.com/install.sh | sh
