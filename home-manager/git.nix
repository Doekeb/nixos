{ config, ... }: {
  programs.git = {
    enable = true;
    settings.init.defaultBranch = "main";
    settings.user.name = "doeke";
    includes = [
      { path = config.sops.secrets.git_email.path; }
    ];
  };
}
