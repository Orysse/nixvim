{ config, ... }:
{
  flake.modules.nixvim.formatting.imports = with config.flake.modules.nixvim; [
    conform
    formatters
    formatting-filetypes
  ];
}
