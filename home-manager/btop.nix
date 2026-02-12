{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    btop
  ];
  home.file.".config/btop".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixos/dotfiles/.config/btop";
}
