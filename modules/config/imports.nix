{ config, ... }:
{
  flake.modules.nixvim.all.imports = with config.flake.modules.nixvim; [
    settings
    keymaps
    autocmd
    filetypes
    performance
    catppuccin
    completion
    editor
    formatting
    gitsigns
    lsp
    oil
    snacks
    ui
  ];
}
