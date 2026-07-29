{ config, pkgs, ... }:
{
  # programs.kitty.enable = true;
  home.packages = with pkgs; [ kitty ];

  xdg.configFile."kitty".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/kitty";
}
