{ config, ... }: {
  programs.pi-coding-agent.enable = true;
  home.file.".pi/agent/settings.json".source =
    config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/nixos/dotfiles/.pi/agent/settings.json";
}
