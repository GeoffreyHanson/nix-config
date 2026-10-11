{ ... }:

{
    imports = [
      ./home/packages.nix
    ];

    home.username = "gkh";
    home.homeDirectory = "/home/gkh";
    home.stateVersion = "26.05";
}
