{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    htop
  ];
  home.file.".config/htop".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixos/dotfiles/.config/htop";
}
