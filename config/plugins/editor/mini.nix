_: {
  plugins = {
    mini = {
      enable = true;

      modules = {
        git = { };
        diff = {
          view = {
            style = "sign";
          };
        };

        pairs = { };

        surround = { };

        ai = {
          n_lines = 500;
        };

        align = { };

        indentscope = {
          symbol = "│";
          options = {
            try_as_border = true;
          };
        };

        move = { };
      };
    };
  };
}
