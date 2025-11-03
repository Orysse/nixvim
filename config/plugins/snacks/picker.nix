{
  config,
  lib,
  pkgs,
  ...
}:
{
  extraPackages = [ pkgs.ripgrep ];
  plugins.snacks = {
    enable = true;
    settings = {
      picker = {
        enabled = true;
        formatters = {
          file = {
            filename_first = true;
          };
        };
        matcher = {
          frecency = true;
        };
      };
    };
  };

  keymaps =
    lib.mkIf (config.plugins.snacks.enable && lib.hasAttr "picker" config.plugins.snacks.settings)
      [
        # File navigation
        {
          mode = "n";
          key = "<leader>ff";
          action.__raw = "function() Snacks.picker.files() end";
          options.desc = "Find files";
        }
        {
          mode = "n";
          key = "<C-p>";
          action.__raw = "function() Snacks.picker.git_files() end";
          options.desc = "Git files";
        }
        {
          mode = "n";
          key = "<leader>fg";
          action.__raw = "function() Snacks.picker.recent() end";
          options.desc = "Recent files";
        }
        {
          mode = "n";
          key = "<leader>fb";
          action.__raw = "function() Snacks.picker.buffers() end";
          options.desc = "Buffers";
        }

        # Search
        {
          mode = "n";
          key = "<leader>lg";
          action.__raw = "function() Snacks.picker.grep() end";
          options.desc = "Live grep";
        }
        {
          mode = "n";
          key = "<leader>sb";
          action.__raw = "function() Snacks.picker.grep_buffers() end";
          options.desc = "Search buffer";
        }

        # Git
        {
          mode = "n";
          key = "<leader>gc";
          action.__raw = "function() Snacks.picker.git_log() end";
          options.desc = "Git commits";
        }
        {
          mode = "n";
          key = "<leader>gs";
          action.__raw = "function() Snacks.picker.git_status() end";
          options.desc = "Git status";
        }
        {
          mode = "n";
          key = "<leader>gb";
          action.__raw = "function() Snacks.picker.git_branches() end";
          options.desc = "Git branches";
        }

        # Vim helpers
        {
          mode = "n";
          key = "<leader>sh";
          action.__raw = "function() Snacks.picker.help() end";
          options.desc = "Help pages";
        }
        {
          mode = "n";
          key = "<leader>sk";
          action.__raw = "function() Snacks.picker.keymaps() end";
          options.desc = "Keymaps";
        }
        {
          mode = "n";
          key = "<leader>sC";
          action.__raw = "function() Snacks.picker.commands() end";
          options.desc = "Commands";
        }
        {
          mode = "n";
          key = "<leader>:";
          action.__raw = "function() Snacks.picker.command_history() end";
          options.desc = "Command history";
        }
        {
          mode = "n";
          key = "<leader>uC";
          action.__raw = "function() Snacks.picker.colorschemes() end";
          options.desc = "Colorscheme";
        }

        # LSP
        {
          mode = "n";
          key = "<leader>sd";
          action.__raw = "function() Snacks.picker.diagnostics_buffer() end";
          options.desc = "Document diagnostics";
        }
        {
          mode = "n";
          key = "<leader>sD";
          action.__raw = "function() Snacks.picker.diagnostics() end";
          options.desc = "Workspace diagnostics";
        }
        {
          mode = "n";
          key = "<leader>fs";
          action.__raw = "function() Snacks.picker.lsp_symbols() end";
          options.desc = "LSP symbols";
        }

        # Notifications
        {
          mode = "n";
          key = "<leader>sn";
          action.__raw = "function() Snacks.notifier.show_history() end";
          options.desc = "Notification history";
        }
      ];
}
