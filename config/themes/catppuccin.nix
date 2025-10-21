{
  colorschemes = {
    catppuccin = {
      enable = true;
      settings = {
        background = {
          light = "macchiato";
          dark = "mocha";
        };
        flavour = "macchiato"; # "latte", "mocha", "frappe", "macchiato" or raw lua code
        no_bold = false;
        no_italic = false;
        no_underline = false;
        transparent_background = true;
        integrations = {
          treesitter = true;
          mini = {
            enabled = true;
            indentscope_color = "rosewater";
          };
          snacks = {
            enabled = true;
          };
        };
        custom_highlights = {
          NormalFloat = {
            bg = "none";
          };
          FloatBorder = {
            bg = "none";
          };
          FloatTitle = {
            bg = "none";
          };
        };
      };
    };
  };
}
