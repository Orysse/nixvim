{ config, ... }:
{
  flake.modules.nixvim.plugins.autocompletion.imports = with config.flake.modules.nixvim.plugins; [
    blink-cmp
    friendly-snippets
    luasnip
  ];
}
