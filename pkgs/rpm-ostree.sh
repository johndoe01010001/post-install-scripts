#!/usr/bin/env bash

set -euo pipefail

pkgs=(
	distrobox
	fish
	fuse
	fuse-libs
	ghostty
	tailscale
	nfs-utils
)

rpm-ostree upgrade

# `--idempotent` prevents erroring when a pkg already installed
# `--allow-inactive` prevents erroring when a pkg is already supplied by the immutable base image 
rpm-ostree install --idempotent --allow-inactive "${pkgs[@]}"
