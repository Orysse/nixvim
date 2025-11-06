{
  config,
  lib,
  ...
}:
{
  plugins.snacks = {
    settings = {
      terminal = {
        enabled = true;
        win = {
          position = "bottom"; # "float", "bottom", "top", "left", "right"
          height = 0.3;
        };
      };
    };
  };

  keymaps =
    lib.mkIf (config.plugins.snacks.enable && lib.hasAttr "terminal" config.plugins.snacks.settings)
      [
        {
          mode = [
            "n"
            "t"
          ];
          key = "<leader>tt";
          action.__raw = ''
            function()
              Snacks.terminal(nil, { cmd = "zsh", win = { position = "bottom", height = 0.3 } })
            end
          '';
          options.desc = "Toggle terminal";
        }
      ];
}
