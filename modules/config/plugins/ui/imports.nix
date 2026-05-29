{ config, ... }:
{
  flake.modules.nixvim.ui.imports = with config.flake.modules.nixvim; [
    bufferline
    lualine
    web-devicons
  ];
}
