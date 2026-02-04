{ pkgs, ... }:
{
  programs = {
    hyprland = {
      enable = true;
      withUWSM = true;
      # wayland.windowManager.hyprland.systemd.enable = false; # Uncomment if using home manager
    };
  };
  environment.systemPackages = with pkgs; [
    hyprpaper
    hyprpicker
    hyprpolkitagent
    hyprpwcenter
    hyprsysteminfo
  ];
}
