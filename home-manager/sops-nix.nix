{ config, pkgs, ... }: {
  home.packages = with pkgs; [ sops ];
  sops.age.keyFile = "${config.xdg.configHome}/sops/age/keys.txt";
  sops.defaultSopsFile = ./secrets/secrets.yaml;
  sops.secrets.git_email = { };
}
