{
  config = {
    extraConfigLuaPre =
      # lua
      ''
        vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignhint", { text = "󰌵", texthl = "diagnostichint", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })
      '';

    clipboard.providers.wl-copy.enable = true;

    opts = {
      # set nu rnu
      number = true;
      relativenumber = true;

      # set sts=4 ts=4 sw=4 expandtab
      tabstop = 4;
      softtabstop = 4;
      shiftwidth = 4;
      expandtab = true;

      showtabline = 2;

      smartindent = true;
      breakindent = true;

      wrap = false;

      swapfile = false;
      backup = false;
      undofile = true;

      hlsearch = true;
      incsearch = true;

      scrolloff = 6;
      signcolumn = "yes";

      timeoutlen = 300;

      updatetime = 50;
      colorcolumn = "80";

      cmdheight = 0;

      termguicolors = true;

      fillchars = {
        eob = " ";
      };
    };
  };
}
