{ ... }: {
  # home manager module (correctly) uses awscli2, not awscli
  programs.awscli.enable = true;
}
