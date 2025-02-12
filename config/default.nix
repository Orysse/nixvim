_: {
  imports = [
    ./settings.nix
    ./keymaps.nix
    # ./auto_cmd.nix
    # ./file_types.nix

    ./plugins/themes/catppuccin.nix

    ./plugins/cmp/autopairs.nix
    # ./plugins/cmp/blink.nix
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/lspkind.nix

    ./plugins/editor/illuminate.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/oil.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/treesitter.nix

    ./plugins/git/lazygit.nix
    ./plugins/git/gitsigns.nix

    ./plugins/lsp/lsp.nix
    ./plugins/lsp/conform.nix

    ./plugins/snippets/luasnip.nix

    ./plugins/ui/bufferline.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/startup.nix

    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/mini.nix
    ./plugins/utils/web-devicons.nix
  ];
}
