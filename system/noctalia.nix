{ ... }: {
  programs.noctalia = {
    enable = true;
    recommendedServices.enable = true;
  };
  programs.noctalia-greeter.enable = true;
}
