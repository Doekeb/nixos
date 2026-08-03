# Provides notify-send
{ pkgs, ... }: {
  home.packages = with pkgs; [ libnotify ];
}
