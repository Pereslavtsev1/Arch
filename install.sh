#!/bin/bash
set -e

install_tools() {
    tools=(
        git curl neovim btop nitch vesktop-bin amneziavpn-bin zoxide jq
        xh fd fzf nvidia nvidia-utils
        nvibrant-bin nautilus yazi zen-browser-bin obsidian autoconf automake pavucontrol ripgrep eza unzip
        calf easyeffects
        noto-fonts-emoji matugen
    )

    echo "Installing additional tools..."
    for tool in "${tools[@]}"; do
        if ! yay -S --noconfirm --needed "$tool"; then
            echo "⚠️ Failed to install $tool, skipping..."
        fi
    done
}

echo "Starting installation script..."
install_tools
echo "All tools have been installed successfully."
