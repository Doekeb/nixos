{ ... }:
{
  programs.firefox = {
    enable = true;
    profiles = {
      doeke = {
        extensions.force = true;
      };
    };
  };
}
