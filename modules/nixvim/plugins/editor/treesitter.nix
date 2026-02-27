{
  flake.modules.nixvim.plugins.treesitter =
    {
      pkgs,
      tree-sitter-tiger,
      ...
    }:
    {
      plugins.treesitter = {
        enable = true;
        settings = {
          indent.enable = true;
          highlight.enable = true;
        };
        folding.enable = true;
        nixvimInjections = true;
        grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars ++ [
          tree-sitter-tiger
        ];
      };
    };
}
