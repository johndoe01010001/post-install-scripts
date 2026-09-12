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
	duf
	procs

	# Essential
	starship
	fastfetch	
	tmux
	flatpak
	fuse
	fuse3
	ghostty # Only in cachy repos or arch [extra] repo
	micro
	tldr
	nfs-utils
	stow
	jq
	yq

	# Networking
	bind-utils # dig
	iperf3
	nmap-ncat
	nmap
	wireshark
	tailscale
	sshfs

	# Dev
	git
	gh
	distrobox
	podman
	podman-compose
	#dotnet-sdk # needs version
	git-filter-repo
	uv
	# winboat

	# Gaming
	gamemode
)

sudo dnf update -y
sudo dnf install -y "${pkgs[@]}"
sudo dnf autoremove -y

# Ghostty
sudo dnf copr enable -y scottames/ghostty
sudo dnf install -y ghostty
