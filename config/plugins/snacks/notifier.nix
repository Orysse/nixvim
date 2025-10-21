_: {
  plugins.snacks = {
    settings = {
      notifier = {
        enabled = true;
        timeout = 3000;
        width = {
          min = 50;
          max = 80;
        };
        height = {
          max = 10;
        };
        style = "compact";
        top_down = true;
        icons = {
          debug = "  ";
          error = "  ";
          info = "  ";
          trace = "✎  ";
          warn = "  ";
        };
        level = "info";
      };
    };
  };
}
