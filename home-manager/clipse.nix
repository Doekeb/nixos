{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    clipse
    wl-clipboard
  ];
  # services.clipse.enable = true;
  xdg.configFile."clipse/config.json".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/clipse/config.json";
}
