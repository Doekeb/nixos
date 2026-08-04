# TODO: Move to home manager
{ pkgs, ... }: {
  programs.tmux.enable = true;
  environment.systemPackages = with pkgs; [ gitmux ];
}
