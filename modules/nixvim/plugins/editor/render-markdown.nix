{
  flake.modules.nixvim.plugins.render-markdown = {
    plugins = {
      render-markdown = {
        enable = true;
        settings = {
          indent = {
            enabled = false;
          };
          code = {
            width = "block";
            position = "left";
            right_pad = 5;
            border = "thick";
          };
          dash = {
            width = 100;
          };
          file_types = [
            "markdown"
            "Avante"
            "quarto"
          ];
        };
      };
    };
  };
}
