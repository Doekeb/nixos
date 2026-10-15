{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    libre-baskerville
    nerd-fonts.fira-code
    # nerd-fonts.jetbrains-mono
    # nerd-fonts.monofur
    # nerd-fonts.roboto-mono
    noto-fonts
    quicksand
  ];
  fonts.fontconfig.defaultFonts = {
    serif = [ "LibreBaskerville" ];
    sansSerif = [ "Quicksand" ];
    emoji = [ "Noto Color Emoji" ];
    # monospace = [ "Monofur Nerd Font" ]; # 57 lines # Decent...
    monospace = [ "FiraCode Nerd Font Mono Light" ]; # 45 lines # Decent...
    # monospace = [ "RobotoMono Nerd Font" ]; # 43 lines Not bad, still a little spacy...
  };
}
