{ pkgs, ... }:
{
  stylix = {
    enable = true;
    autoEnable = false;

    fonts = {
      # serif = config.stylix.fonts.monospace;
      # sansSerif = config.stylix.fonts.monospace;
      # emoji = config.stylix.fonts.monospace;
      monospace = {
        package = pkgs.nerd-fonts.open-dyslexic;
        name = "OpenDyslexic Nerd Font";
      };
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";

    targets = {
      firefox = {
        profileNames = [ "doeke" ];
        enable = true;
        colorTheme.enable = true;
        firefoxGnomeTheme.enable = true;
      };
      gtk.enable = true;
      waybar.enable = true;
    };
  };
}
