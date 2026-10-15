{ config, ... }: {
  programs.opencode.enable = true;
  xdg.configFile."opencode".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/opencode";
}
