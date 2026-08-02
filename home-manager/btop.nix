{ config, ... }:
{
  programs.btop.enable = true;
  xdg.configFile."btop".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/btop";
}
