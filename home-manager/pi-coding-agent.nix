{ config, pkgs, ... }: {
  programs.pi-coding-agent.enable = true;
  programs.pi-coding-agent.extraPackages = [ pkgs.nodejs ];
  home.file.".pi/agent/settings.json".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.pi/agent/settings.json";
}
