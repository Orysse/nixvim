{
  plugins.fidget = {
    enable = true;
    settings = {
      logger = {
        level = "warn"; # “off”, “error”, “warn”, “info”, “debug”, “trace”
        float_precision = 1.0e-2; # Limit the number of decimals displayed for floats
      };
      progress = {
        display = {
          progress_icon = {
            pattern = "dots";
            period = 1;
          }; # Icon shown when LSP progress tasks are in progress
        };
      };
      notification = {
        override_vim_notify = true;

        window = {
          normal_hl = "Comment";
          winblend = 0;
          border = "none"; # none, single, double, rounded, solid, shadow
          zindex = 45;
          max_width = 0;
          max_height = 0;
          x_padding = 1;
          y_padding = 0;
          align = "bottom";
          relative = "editor";
        };
      };
    };
  };
}
