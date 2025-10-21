_: {
  plugins.flash = {
    enable = true;

    settings = {
      jump = {
        autojump = true;
      };
    };
  };

  keymaps = [
    {
      mode = [
        "n"
        "x"
        "o"
      ];
      key = "s";
      action.__raw = ''require("flash").jump'';
    }
    {
      mode = [
        "n"
        "x"
        "o"
      ];
      key = "S";
      action.__raw = ''require("flash").treesitter'';
    }
  ];
}
