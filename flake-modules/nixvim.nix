{ inputs, ... }:
{
  perSystem =
    {
      system,
      pkgs,
      ...
    }:
    let
      nixvimLib = inputs.nixvim.lib.${system};
      nixvim' = inputs.nixvim.legacyPackages.${system};

      tree-sitter-tiger = pkgs.tree-sitter.buildGrammar {
        language = "tiger";
        version = "0.0.1";
        src = inputs.tree-sitter-tiger;
      };

      nixvimModule = {
        inherit system;
        module = import ../config;
        extraSpecialArgs = {
          inherit tree-sitter-tiger;
        };
      };
      nvim = nixvim'.makeNixvimWithModule nixvimModule;
    in
    {
      packages = {
        default = nvim;
      };

      checks = {
        default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
      };
    };
}
