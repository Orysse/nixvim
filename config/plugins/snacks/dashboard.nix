{
  pkgs,
  lib,
  ...
}:
{
  plugins.snacks = {
    settings = {
      dashboard = {
        enabled = true;
        preset = {
          keys = [
            {
              icon = " ";
              key = "e";
              desc = "New File";
              action = ":ene | startinsert";
            }
            {
              icon = " ";
              key = "f";
              desc = "Find File";
              action = ":lua vim.cmd('cd $HOME') Snacks.picker.files()";
            }
            {
              icon = " ";
              key = "r";
              desc = "Recent Files";
              action = ":lua Snacks.picker.recent()";
            }
            {
              icon = " ";
              key = "g";
              desc = "Find Text";
              action = ":lua Snacks.picker.grep()";
            }
            {
              icon = " ";
              key = "q";
              desc = "Quit";
              action = ":qa";
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
