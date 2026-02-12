{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bat
    duckdb
    eza
    fd
    fzf
    jq
    ripgrep
    uv
    yq
  ];
}
