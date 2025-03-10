{
  description = "Abel Chartier nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
    tree-sitter-tiger.url = "github:ambroisie/tree-sitter-tiger";
  };

  outputs =
    {
      nixvim,
      flake-parts,
      nixpkgs,
      ...
    }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        {
          system,
          pkgs,
          self',
          lib,
          ...
        }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          baseNixvimModule = {
            inherit system;
            module = import ./config;
            extraSpecialArgs = {
            };
          };
          aiNixvimModule = {
            inherit system;
            module = import ./config;
            extraSpecialArgs = {
              aiEnabled = true;
            };
          };
          nvim = nixvim'.makeNixvimWithModule baseNixvimModule;
          nvimAi = nixvim'.makeNixvimWithModule aiNixvimModule;
        in
        {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = nixvimLib.check.mkTestDerivationFromNixvimModule baseNixvimModule;
          };

          formatter = pkgs.nixfmt-rfc-style;

          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
            withAi = nvimAi;
          };
        };
    };
}
