{ ... }: {
  networking.hostName = "lemur-pro"; # Define your hostname.

  # Enable networking
  # Also turned on by noctalia nixos module
  networking.networkmanager.enable = true;
}
