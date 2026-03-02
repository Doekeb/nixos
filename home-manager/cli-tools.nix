{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bat
    duckdb
    eza
    fd
    fzf
    jq
    poetry
    ripgrep
    uv
    yq
  ];
}
