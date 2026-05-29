{ config, ... }:
{
  flake.modules.nixvim.lsp.imports = with config.flake.modules.nixvim; [
    lsp-config
    fidget
    noice
    schemastore
    servers
    trouble
  ];
}
