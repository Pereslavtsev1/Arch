{ config, pkgs, ... }:

{
    programs.zoxide.enable = true;
    programs.zoxide.enableBashIntegration = true;
    programs.fzf.enable = true;
    programs.neovim.enable = true;
    programs.neovim.viAlias = true;
    programs.neovim.vimAlias = true;

    programs.fd.enable = true;
    programs.lazygit.enable = true;
    programs.ripgrep.enable = true;
    home.packages = with pkgs; [
        easyeffects
        wl-clipboard
        xh
        unzip
        btop
        bat
        glow
        jq
        nitch
        yazi
        glib
        vesktop
        spotify
        nautilus
    ];

    nixpkgs.config.allowUnfree = true;
}
