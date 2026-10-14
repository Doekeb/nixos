# /etc/nixos/flake.nix
{
  description = "Doeke's flake";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    noctalia-greeter = {
      url = "github:noctalia-dev/noctalia-greeter";
      inputs.nixpkgs.follows = "nixpkgs";
    }; # TODO: install from nixpkgs instead
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      home-manager,
      nixpkgs,
      noctalia-greeter,
      sops-nix,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        lemur-pro = nixpkgs.lib.nixosSystem {
          system = system;
          specialArgs = {
            inherit inputs;
            hostname = "lemur-pro";
          };
          modules = [
            noctalia-greeter.nixosModules.default
            sops-nix.nixosModules.sops
            ./lemur-pro
          ];
        };
        framework13-pro = nixpkgs.lib.nixosSystem {
          system = system;
          specialArgs = {
            inherit inputs;
            hostname = "framework13-pro";
          };
          modules = [
            noctalia-greeter.nixosModules.default
            sops-nix.nixosModules.sops
            ./framework13-pro
          ];
        };
      };
      homeConfigurations = {
        "doeke@lemur-pro" = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            sops-nix.homeManagerModules.sops
            ./home-manager/home.nix
          ];
        };
        "doeke@framework13-pro" = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            sops-nix.homeManagerModules.sops
            ./home-manager/home.nix
          ];
        };
      };
    };
}
