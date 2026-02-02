{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprpaper
  ];
  home.file.".config/hypr".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixos/dotfiles/.config/hypr";
}
