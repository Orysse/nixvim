{ ... }:
{
  plugins.notify = {
    enable = true;
    settings = {
      fps = 30;
      icons = {
        debug = " ";
        error = " ";
        info = " ";
        trace = "✎ ";
        warn = " ";
      };
      level = "info";
      max_height = 10;
      max_width = 80;
      minimum_width = 50;
      render = "default";
      stages = "fade_in_slide_out";
      timeout = 5000;
      top_down = true;
    };
  };
}
