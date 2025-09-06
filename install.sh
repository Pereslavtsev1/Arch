#!/bin/bash
# Set -e to exit script on error
set -e

# Function to install additional tools
install_tools() {
    tools=("git" "curl" "neovim" "btop" "nitch" "vesktop-bin" "amneziavpn-bin" "zoxide" "jq" "xh" "fd" "fzf" "nvidia" "nvidia-utils" "nvibrant-bin" "nautilus" "yazi" "zen-browser-bin" "obsidian" "autoconf" "automake" "pavucontrol" "ripgrep")

    echo "Installing additional tools..."
    for tool in "${tools[@]}"; do
        if ! pacman -Qs "$tool" >/dev/null; then
            echo "Installing $tool..."
            yay -S --noconfirm --needed "$tool"
        else
            echo "$tool is already installed"
        fi
    done
}

# Main script execution
echo "Starting installation script..."

install_tools

echo "All tools have been installed successfully."
