{
  pkgs,
  inputs,
  config,
  ...
}:
{
  home.packages = [ inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default ];
  # home.packages = with pkgs; [
  #   noctalia-shell
  #   wtype # auto-paste
  # ];
  xdg.configFile."noctalia".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/noctalia";
}
