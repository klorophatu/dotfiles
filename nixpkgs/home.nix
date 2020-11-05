{ pkgs, ... }:

{

  imports = [
    ./packages.nix
    ./configs/dunst.nix
  ];

  programs.home-manager = {
    enable = true;
  };

  # Dunst
  services.dunst.enable = true;

  # Picom
  services.picom.enable = false;
}
