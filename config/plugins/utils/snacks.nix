{ pkgs, lib, ... }:
{
  plugins.snacks = {
    enable = true;
    settings = {
      animate = {
        enabled = true;
      };
      quickfile = {
        enabled = false;
      };
      words = {
        debounce = 100;
        enabled = true;
      };
      notify = {
        enabled = true;
      };
      notifier = {
        enabled = true;
      };
      dashboard = {
        enabled = true;
        preset = {
          keys = [
            {
              icon = " ";
              key = "e";
              desc = "New File";
              action = "<CMD>ene <BAR> startinsert<CR>";
            }
            {
              icon = " ";
              key = "f";
              desc = "Find File";
              action = "<CMD>cd $HOME <BAR> Telescope find_files<CR>";
            }
            {
              icon = " ";
              key = "r";
              desc = "Recent Files";
              action = "<CMD>Telescope oldfiles<CR>";
            }
            {
              icon = " ";
              key = "g";
              desc = "Find Text";
              action = "<CMD>Telescope live_grep<CR>";
            }
            {
              icon = "󰇥 ";
              key = "s";
              desc = "Goto Scrooge (Monster Maxxing 🤫 🧏 🗿)";
              action = "<cmd>!firefox https://grossistants.fr & disown<cr><cr>";
            }
            {
              icon = " ";
              key = "p";
              desc = "Open pubby";
              action = "<cmd>!firefox https://pubby.club/~/cisco & disown<cr><cr>";
            }
            {
              icon = " ";
              key = "q";
              desc = "Quit";
              action = "<CMD>qa<CR>";
            }
          ];
        };
        sections = [
          {
            section = "terminal";
            cmd = "${lib.getExe pkgs.cava}";
            height = 25;
            padding = 1;
          }
          {
            icon = " ";
            pane = 2;
            title = "Keymaps";
            section = "keys";
            padding = 1;
            indent = 3;
          }
          {
            icon = " ";
            pane = 2;
            title = "Recent Files";
            section = "recent_files";
            padding = 1;
            indent = 3;
          }
          {
            icon = " ";
            pane = 2;
            title = "Projects";
            section = "projects";
            padding = 1;
            indent = 3;
          }
          {
            pane = 2;
            icon = " ";
            title = "Git Status";
            section = "terminal";
            enabled.__raw = ''
              Snacks.git.get_root() ~= nil
            '';
            cmd = "${pkgs.hub}/bin/hub status --short --branch --renames";
            height = 5;
            padding = 1;
            ttl = 5 * 60;
            indent = 3;
          }
        ];
      };
    };
  };
}
