{
  flake.modules.nixvim.settings = {
    config = {
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

        foldcolumn = "0";
        foldlevel = 99;
        foldlevelstart = 99;
        foldenable = true;
        foldmethod = "indent";

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
  };
}
