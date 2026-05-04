{ config, pkgs, ... }:
{
  stylix = {
    enable = true;
    autoEnable = false;

    fonts = {
      # serif = config.stylix.fonts.monospace;
      # sansSerif = config.stylix.fonts.monospace;
      # emoji = config.stylix.fonts.monospace;
      serif = {
        package = pkgs.quicksand;
        name = "Quicksand";
      };
      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
      };
      emoji = {
        package = pkgs.quicksand;
        name = "Quicksand";
      };
      monospace = {
        package = pkgs.drafting-mono;
        name = "Drafting Mono";
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
      # kitty.enable = true;
      waybar.enable = true;
    };
  };
}
