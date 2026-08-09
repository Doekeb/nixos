{ ... }: {
  imports = [
    ./bluetooth.nix
    ./boot.nix
    ./cloudflare-warp.nix
    ./git.nix
    # ./greetd.nix
    ./gvfs.nix
    ./hardware-configuration.nix
    ./hyprland.nix
    ./locale.nix
    ./networking.nix
    ./nix.nix
    ./noctalia.nix
    ./power-profiles-daemon.nix
    ./printing.nix
    ./shells.nix
    ./steam.nix
    ./usbutils.nix
    ./upower.nix
    ./users.nix
    ./vim.nix
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?
}
