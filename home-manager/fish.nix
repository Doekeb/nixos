{ config, ... }:
{
  home.file.".config/fish".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixos/dotfiles/.config/fish";
}
