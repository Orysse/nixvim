{
  flake.modules.nixvim.claude-code =
    { pkgs, ... }:
    {
      extraPackages = [ pkgs.claude-code ];

      plugins.claude-code = {
        enable = true;
        settings = {
          window = {
            position = "vertical";
            split_ratio = 0.4;
            hide_numbers = true;
            hide_signcolumn = true;
          };
        };
      };

      keymaps = [
        {
          mode = "n";
          key = "<leader>ac";
          action = "<cmd>ClaudeCode<cr>";
          options.desc = "Toggle Claude Code";
        }
        {
          mode = "v";
          key = "<leader>ac";
          action = "<cmd>ClaudeCode<cr>";
          options.desc = "Toggle Claude Code";
        }
      ];
    };
}
