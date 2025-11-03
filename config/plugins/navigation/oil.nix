{
  config,
  lib,
  ...
}:
{
  plugins.oil = {
    enable = true;
    settings = {
      columns = [
        "icon"
      ];
      keymaps = {
        "-" = {
          action = "Oil";
          options = {
            desc = "Open parent directory";
          };
        };
      };
    };
  };

  keymaps = lib.mkIf (config.plugins.oil.enable) [
    {
      mode = "n";
      key = "-";
      action = "<CMD>Oil<CR>";
      options.desc = "Open Oil";
    }
  ];
}
