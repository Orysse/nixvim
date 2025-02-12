{
  config = {
    clipboard.providers.wl-copy.enable = true;

    opts = {
      # set nu rnu
      number = true;
      relativenumber = true;

      # set sts=4 ts=4 sw=5 expandtab
      tabstop = 4;
      softtabstop = 4;
      shiftwidth = 4;
      expandtab = true;

      smartindent = true;
      breakindent = true;

      wrap = false;

      swapfile = false;

      hlsearch = true;
      incsearch = true;

      scrolloff = 6;
      signcolumn = "yes";

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
