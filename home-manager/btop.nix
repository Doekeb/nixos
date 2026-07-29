{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    btop
  ];
  xdg.configFile."btop".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/btop";
}
