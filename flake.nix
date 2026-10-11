{
  description = "gkh nix config";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-hardware.url = "github:NixOS/nixos-hardware";
  };
  outputs = { nixpkgs, home-manager, nixos-hardware, ... }:
    {
      nixosConfigurations.surfacebook = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/surfacebook/configuration.nix
          nixos-hardware.nixosModules.microsoft-surface-common
          home-manager.nixosModules.home-manager
          {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.gkh = import ./home/home.nix;
          }
        ];
      };
    };
}
