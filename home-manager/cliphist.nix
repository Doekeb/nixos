{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    # cliphist
    wl-clipboard
  ];
  services.cliphist.enable = true;
  # home.file.".config/clipse/config.json".source =
  #   config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixos/dotfiles/.config/clipse/config.json";
}
