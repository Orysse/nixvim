{ config, ... }:
{
  flake.modules.nixvim.base.imports = with config.flake.modules.nixvim; [
    comments
    flash
    imports
    mini
    nvim-ufo
    render-markdown
    tmux-navigator
    todo-comments
    treesitter
    undotree
    vimtex
    whichkey
  ];
}
