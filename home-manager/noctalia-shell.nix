{ config, pkgs, ... }:
{
  home.packages = with pkgs; [ noctalia-shell ];
  home.file.".config/noctalia".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixos/dotfiles/.config/noctalia";
}
