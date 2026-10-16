{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bat
    duckdb
    eza
    fd
    fzf
    jq
    lsof
    poetry
    ripgrep
    uv
    yq
  ];
}
