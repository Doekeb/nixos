# Programs that don't need any extra configuration
{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    mongodb-compass
    slack
  ];
}
