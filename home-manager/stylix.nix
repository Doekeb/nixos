{ pkgs, ... }:
{
  stylix = {
    enable = true;
    autoEnable = false;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";
    targets.firefox = {
      profileNames = [ "doeke" ];
      enable = true;
      colorTheme.enable = true;
      firefoxGnomeTheme.enable = true;
    };
    targets.gtk.enable = true;
  };
}
