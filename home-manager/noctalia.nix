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
  home.file.".config/noctalia".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixos/dotfiles/.config/noctalia";
}
