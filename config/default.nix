_: {
  imports = [
    ./settings.nix
    ./keymaps.nix
    ./auto_cmd.nix
    ./file_types.nix

    ./plugins/themes/catppuccin.nix

    ./plugins/cmp/autopairs.nix
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/lspkind.nix
    ./plugins/cmp/schemastore.nix

    ./plugins/editor/comment.nix
    ./plugins/editor/flash.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/oil.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/undotree.nix

    ./plugins/git/lazygit.nix
    ./plugins/git/gitsigns.nix

    ./plugins/lsp/conform.nix
    ./plugins/lsp/lsp.nix

    ./plugins/snippets/luasnip.nix
    ./plugins/snippets/friendly-snippets.nix

    ./plugins/ui/alpha.nix
    ./plugins/ui/bufferline.nix
    ./plugins/ui/fidget.nix
    ./plugins/ui/lualine.nix

    ./plugins/utils/mini.nix
    ./plugins/utils/snacks.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/web-devicons.nix
    ./plugins/utils/whichkey.nix
  ];
}
