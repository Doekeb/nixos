{ pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  programs.fish.enable = true;
  users.users.doeke = {
    isNormalUser = true;
    description = "Doeke Buursma";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    # packages = with pkgs; [ ];
    shell = pkgs.fish;
  };
}
