{ config, pkgs, ... }:
{
  # programs.kitty.enable = true;
  home.packages = with pkgs; [ kitty ];

  home.file.".config/kitty".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixos/dotfiles/.config/kitty";
}
