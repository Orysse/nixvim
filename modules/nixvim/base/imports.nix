{ config, ... }:
{
  flake.modules.nixvim.base.imports = with config.flake.modules.nixvim; [
    autocmd
    filetype
    keymaps
    performance
    settings
  ];
}
