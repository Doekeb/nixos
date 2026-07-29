{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    htop
  ];
  xdg.configFile."htop".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/htop";
}
