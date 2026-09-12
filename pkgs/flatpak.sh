#!/usr/bin/env bash

set -euo pipefail

flatpaks=(
	# Gaming
	com.discordapp.Discord
	com.valvesoftware.Steam
	io.github.Faugus.faugus-launcher
	io.github.benjamimgois.goverlay
	org.freedesktop.Platform.VulkanLayer.MangoHud//26.08
	org.prismlauncher.PrismLauncher
	io.github.ilya_zlobintsev.LACT
	org.openrgb.OpenRGB

	# Essential
	com.bitwarden.desktop
	com.github.tchx84.Flatseal
	com.github.wwmm.easyeffects
	com.github.zocker_160.SyncThingy
	com.spotify.Client
	com.stremio.Stremio
	it.mijorus.gearlever
	md.obsidian.Obsidian
	org.onlyoffice.desktopeditors
	eu.betterbird.Betterbird
	#org.kde.filelight # Bundled with KDE

	# Dev
	dev.zed.Zed
	ai.lmstudio.lm-studio
	com.ktechpit.colorsmith
	com.orcaslicer.OrcaSlicer
	org.freecad.FreeCAD
	com.getpostman.Postman
	org.zaproxy.ZAP # Burp suite alternative
)

flatpak remote-add --if-not-exists \
	flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub "${flatpaks[@]}"
