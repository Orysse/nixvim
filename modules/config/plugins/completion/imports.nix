{ config, ... }:
{
  flake.modules.nixvim.completion.imports = with config.flake.modules.nixvim; [
    blink-cmp
    friendly-snippets
    luasnip
  ];
}
