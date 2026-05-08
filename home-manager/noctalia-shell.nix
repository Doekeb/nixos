{ config, ... }:
{
  home.file.".config/noctalia".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixos/dotfiles/.config/noctalia";
}
