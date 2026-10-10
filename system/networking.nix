{ hostname, ... }: {
  networking.hostName = hostname; # Define your hostname.

  # Enable networking
  # Also turned on by noctalia nixos module
  networking.networkmanager.enable = true;
}
