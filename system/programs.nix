# Programs that don't need any extra configuration
{ pkgs, ... }:
{
  programs.zoom-us.enable = true;
  environment.systemPackages = with pkgs; [
    mongodb-compass
    slack
  ];
}
