{ ... }: {
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nixpkgs.config.allowUnfree = true;
  programs.nix-ld.enable = true;
}
