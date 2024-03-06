{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=23.11";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-utils, flake-compat }: 
  flake-utils.lib.eachDefaultSystem( system:  

  let 
    app = import ./app.nix { 
      pkgs = nixpkgs.legacyPackages.${system};
      inherit system;
    };
  in
  {
    packages.default = app;
  });
}
