{ pkgs, ... }:
{
  programs = {
    hyprland = {
      enable = true;
      withUWSM = true;
      # wayland.windowManager.hyprland.systemd.enable = false; # Uncomment if using home manager
    };
    # hyprlock.enable = true;
  };
  environment.systemPackages = with pkgs; [
    hyprpaper
    # hyprshutdown
  ];
}
