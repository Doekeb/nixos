{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bat
    btop
    duckdb
    eza
    fd
    fzf
    htop
    jq
    ripgrep
    uv
    yq
  ];
}
