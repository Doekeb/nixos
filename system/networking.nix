{ ... }: {
  networking.hostName = "lemur-pro"; # Define your hostname.

  # Enable networking
  # Needed for Noctalia network manager (and for networking to work in general)
  networking.networkmanager.enable = true;
}
