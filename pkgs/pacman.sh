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
	fd
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
	fuse2
	fuse3
	ghostty # Only in cachy repos or arch [extra] repo
	micro
	tldr
	nfs-utils
	stow
	jq
	yq

	# Networking
	bind # dig
	iperf3
	openbsd-netcat
	nmap
	# To avoid which provider questions for Wireshark
	qt6-multimedia-ffmpeg
	pipewire-jack
	crun
	wireshark-qt
	tailscale
	sshfs

	# Dev
	git
	git-filter-repo
	git-delta
	github-cli
	distrobox
	podman
	podman-compose
	dotnet-sdk
	uv
	# winboat

	# Gaming
	gamemode
)

sudo pacman -Syu
sudo pacman -S "${pkgs[@]}"
sudo pacman -Rns $(pacman -Qdtq) # remove orphaned deps and configs
