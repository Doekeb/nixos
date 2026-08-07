{ config, pkgs, ... }:
{
  # Need adw-gtk3 to enable Noctalia to theme gtk3 apps
  home.packages = with pkgs; [ adw-gtk3 ];
  xdg.configFile."noctalia".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/noctalia";
}
