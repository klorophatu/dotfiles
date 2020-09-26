{ pkgs, ... }:

{
  home.packages = [
    pkgs.chromium
    pkgs.vim
    pkgs.cmus
    pkgs.nano
    pkgs.teams
    pkgs.unzip
    pkgs.zip
    pkgs.unrar
    pkgs.zathura
    pkgs.thunderbird
    pkgs.qbittorrent
    pkgs.mpv
    pkgs.youtube-dl
    pkgs.filezilla
    pkgs.emacs
    pkgs.gajim
    pkgs.neofetch
    pkgs.irssi
    pkgs.hexchat
    pkgs.tor
    pkgs.electrum
    pkgs.git
    pkgs.lxtask
    pkgs.pulsemixer
    pkgs.mumble
    pkgs.sxiv
    pkgs.rxvt_unicode
    pkgs.qtcreator
    pkgs.maim
    pkgs.go-mtpfs
    pkgs.pcmanfm
    pkgs.ncdu
    pkgs.xorg.xsetroot
    pkgs.hsetroot
  ];

  programs.home-manager = {
    enable = true;
    path = "…";
  };

  # Dunst
  services.dunst.enable = true;

  # Compton
  services.picom.enable = true;

  programs.chromium.enable = true;

  programs.chromium.extensions = [
    "cjpalhdlnbpafiamejdnhcphjbkeiagm"
  ];

}
