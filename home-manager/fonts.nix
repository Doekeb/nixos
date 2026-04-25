{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    # nerd-fonts.bigblue-terminal
    nerd-fonts.open-dyslexic
    nerd-fonts.monofur
    # nerd-fonts.jetbrains-mono
  ];
}
