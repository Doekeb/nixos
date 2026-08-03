# `lsusb` and more
{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ usbutils ];
}
