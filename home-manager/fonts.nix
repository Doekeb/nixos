{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    # nerd-fonts.bigblue-terminal
    drafting-mono
    font-awesome
    nerd-fonts.fira-code
    nerd-fonts.monofur
    nerd-fonts.open-dyslexic
    nerd-fonts.roboto-mono
    nerd-fonts.space-mono
    noto-fonts
    quicksand
    # nerd-fonts.jetbrains-mono
  ];
  fonts.fontconfig.defaultFonts = {
    serif = [ "Quicksand" ];
    sansSerif = [ "Quicksand" ];
    emoji = [ "Quicksand" ];
    monospace = [ "Drafting Mono" ];
  };
}
