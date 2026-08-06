{
  pkgs,
  config,
  lib,
  ...
}:
let
  ns = p: if lib.types.package.check p then p else p.plugin;
  plugins = with pkgs.tmuxPlugins; [
    sensible
    vim-tmux-navigator
    yank
    open
  ];
in
{
  home.packages =
    with pkgs;
    [
      tmux
      gitmux
    ]
    ++ plugins;

  xdg.configFile."tmux".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.config/tmux";

  xdg.configFile."tmux-plugins.conf".text = ''
    ${
      (lib.concatMapStringsSep "\n" (p: ''
        # ${(ns p).pname}
        run-shell ${(ns p).rtp}
      '') plugins)
    }
  '';
}
