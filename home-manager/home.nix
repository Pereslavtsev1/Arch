{ config, pkgs, ... }:

{
  home.username = "pereslavtsev";
  home.homeDirectory = "/home/pereslavtsev";
  home.stateVersion = "25.05";
  home.file.".config/starship.toml" = { source = ../starship/starship.toml; };
  imports = [ ./lang.nix ./tools.nix ];
  programs.home-manager.enable = true;
}
