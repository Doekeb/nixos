{ pkgs, config, ... }:
{
  xdg.configFile =
    let
      ln = config.lib.file.mkOutOfStoreSymlink;
      xdg = config.xdg.configHome;
    in
    {
      "gtk-3.0".source = ln "${xdg}/nixos/dotfiles/.config/gtk-3.0";
      "gtk-4.0".source = ln "${xdg}/nixos/dotfiles/.config/gtk-4.0";
    };
}
