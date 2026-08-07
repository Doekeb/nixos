{ config, ... }:
{
  xdg.configFile."noctalia".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/noctalia";
}
