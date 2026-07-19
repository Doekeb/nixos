{ pkgs, config, ... }:
{
  home.file =
    let
      ln = config.lib.file.mkOutOfStoreSymlink;
      hd = config.home.homeDirectory;
    in
    {
      ".config/gtk-3.0".source = ln "${hd}/.config/nixos/dotfiles/.config/gtk-3.0";
      ".config/gtk-4.0".source = ln "${hd}/.config/nixos/dotfiles/.config/gtk-4.0";
    };
}
