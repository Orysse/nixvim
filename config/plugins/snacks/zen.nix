{
  config,
  lib,
  ...
}:
{
  plugins.snacks = {
    settings = {
      zen = {
        enabled = true;
        toggles = {
          dim = true;
          git_signs = false;
          mini_diff_signs = false;
          diagnostics = false;
          inlay_hints = false;
        };
        win = {
          width = 120;
        };
        zoom = {
          toggles = {
            dim = false;
            git_signs = true;
            mini_diff_signs = true;
            diagnostics = true;
            inlay_hints = true;
          };
        };
      };
    };
  };
  keymaps =
    lib.mkIf (config.plugins.snacks.enable && lib.hasAttr "zen" config.plugins.snacks.settings)
      [
        {
          mode = "n";
          key = "<leader>Z";
          action.__raw = ''
            function()
              Snacks.zen()
            end
          '';
          options.desc = "Toggle Zen Mode";
        }
        {
          mode = "n";
          key = "<leader>z";
          action.__raw = ''
            function()
              Snacks.zen.zoom()
            end
          '';
          options.desc = "Toggle Zoom";
        }
      ];
}
