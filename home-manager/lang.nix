{ config, pkgs, ... }:

{
	programs.java.enable = true;
	programs.go.enable = true;

	home.packages = [
		pkgs.gcc 
		pkgs.nodejs_24
		pkgs.pnpm
		pkgs.python314
        pkgs.uv
        pkgs.cargo
	];
}
