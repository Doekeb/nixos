{ config, pkgs, ... }: {
  home.packages = with pkgs; [ sops ];
  sops.age.keyFile = "${config.xdg.configHome}/sops/age/keys.txt";
  # sops.age.keyFile = "${config.home.homeDirectory}/.local/share/sops/age/keys.txt";
  sops.defaultSopsFile = ./secrets.yaml;
  sops.secrets.git_email = { };
}
