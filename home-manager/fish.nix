{ config, ... }:
{
  xdg.configFile."fish".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/fish";
}
