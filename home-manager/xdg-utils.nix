# Provides, e.g., xdg-open which opens links in the default browser.
{ pkgs, ... }: {
  home.packages = with pkgs; [ xdg-utils ];
}
