{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [ nushell ]; # Change to programs enable next flake update
  programs = {
    bash.enable = true;
    fish.enable = true;
    # nushell.enable = true;
    zsh.enable = true;
  };
}
