{ ... }: {
  imports = [
    ./bluetooth.nix
    ./boot.nix
    ./cloudflare-warp.nix
    ./git.nix
    ./gvfs.nix
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
}
