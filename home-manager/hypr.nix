{ config, ... }: {
  xdg.configFile."hypr".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/hypr";
}
