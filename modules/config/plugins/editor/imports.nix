{ config, ... }:
{
  flake.modules.nixvim.editor.imports = with config.flake.modules.nixvim; [
    comments
    flash
    mini
    nvim-ufo
    render-markdown
    tmux-navigator
    todo-comments
    treesitter
    undotree
    # vimtex
    whichkey
  ];
}
