{ config, pkgs, callPackage, ... }:
{
  # Fonts
  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    terminus_font
    cascadia-code
    font-awesome_4
    powerline-fonts
    dejavu_fonts
    roboto-slab
  ];
}
