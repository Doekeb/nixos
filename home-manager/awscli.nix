{ ... }: {
  # home manager module (correctly) uses awscli2, not awscli
  programs.awscli.enable = true;
  programs.awscli.settings = {
    "default" = {
      region = "us-east-1";
      output = "json";
    };
  };
}
