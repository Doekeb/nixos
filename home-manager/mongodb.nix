{ config, lib, pkgs, ... }:
let
  connectionsDir = ./secrets/mongodb-compass-connections;
  connectionFiles = lib.filterAttrs
    (name: type: type == "regular" && lib.hasSuffix ".json" name)
    (builtins.readDir connectionsDir);
  decryptedConnectionsDir =
    "${config.sops.defaultSymlinkPath}/mongodb-compass-connections";
in
{
  home.packages = with pkgs; [
    mongodb-compass
    mongosh
  ];

  sops.secrets = lib.mapAttrs' (name: _: lib.nameValuePair
    "mongodb-compass-connections/${name}"
    {
      sopsFile = connectionsDir + "/${name}";
      format = "json";
      key = ""; # Decrypt the entire internal Compass connection document.
    }
  ) connectionFiles;

  xdg.configFile."MongoDB Compass/Connections".source =
    config.lib.file.mkOutOfStoreSymlink
      decryptedConnectionsDir;

  # Compass replaces connection files when saving, even if the files are read-only.
  # Unlock the old directory for SOPS regeneration, then lock the new one.
  systemd.user.services.sops-nix.Service = {
    ExecStartPre = pkgs.writeShellScript "unlock-compass-connections" ''
      if [ -d ${lib.escapeShellArg decryptedConnectionsDir} ]; then
        ${pkgs.coreutils}/bin/chmod u+w ${lib.escapeShellArg decryptedConnectionsDir}
      fi
    '';
    ExecStartPost = "${pkgs.coreutils}/bin/chmod 0500 ${lib.escapeShellArg decryptedConnectionsDir}";
  };
}
