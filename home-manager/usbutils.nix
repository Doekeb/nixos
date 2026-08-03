# `lsusb` and more
{ pkgs, ... }:
{
  home.packages = with pkgs; [ usbutils ];
}
