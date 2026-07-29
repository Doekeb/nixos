{ config, ... }:
{
  programs.firefox = {
    enable = true;
    configPath = "${config.xdg.configHome}/mozilla/firefox";
    profiles = {
      doeke = {
        extensions.force = true;
      };
    };
  };
}
