{
  plugins = {
    alpha = {
      enable = true;
      layout = [
        {
          type = "padding";
          val = 5;
        }
        {
          type = "text";
          val = [
            "███╗   ██╗██╗██╗  ██╗     ██████╗  ██████╗ ██╗   ██╗██╗███╗   ███╗"
            "████╗  ██║██║╚██╗██╔╝     ██╔══██╗██╔═══██╗██║   ██║██║████╗ ████║"
            "██╔██╗ ██║██║ ╚███╔╝█████╗██║  ██║██║   ██║██║   ██║██║██╔████╔██║"
            "██║╚██╗██║██║ ██╔██╗╚════╝██║  ██║██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║"
            "██║ ╚████║██║██╔╝ ██╗     ██████╔╝╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║"
            "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝     ╚═════╝  ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝"
          ];
          opts = {
            position = "center";
            hl = "Type";
          };
        }
        {
          type = "padding";
          val = 4;
        }
        {
          type = "group";
          val = [
            {
              type = "button";
              val = "      New File    ";
              on_press.__raw = "function() vim.cmd[[ene]] end";
              opts = {
                shortcut = "n";
                keymap = [
                  "n"
                  "n"
                  "<CMD>ene <BAR> startinsert <CR>"
                  {
                    noremap = true;
                    silent = true;
                    nowait = true;
                  }
                ];
                position = "center";
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            }
            {
              type = "padding";
              val = 2;
            }
            {
              type = "button";
              val = "      Find File    ";
              opts = {
                shortcut = "f";
                keymap = [
                  "n"
                  "f"
                  "<cmd>cd $HOME | Telescope find_files<CR>"
                  {
                    noremap = true;
                    silent = true;
                    nowait = true;
                  }
                ];
                position = "center";
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            }
            {
              type = "padding";
              val = 2;
            }
            {
              type = "button";
              val = "      Recent Files    ";
              on_press.__raw = "function() require('telescope.builtin').oldfiles() end";
              opts = {
                shortcut = "r";
                keymap = [
                  "n"
                  "r"
                  "<cmd>Telescope oldfiles<CR>"
                  {
                    noremap = true;
                    silent = true;
                    nowait = true;
                  }
                ];
                position = "center";
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            }
            {
              type = "padding";
              val = 2;
            }
            {
              type = "button";
              val = "      Find Text    ";
              on_press.__raw = "function() require('telescope.builtin').live_grep() end";
              opts = {
                shortcut = "g";
                keymap = [
                  "n"
                  "g"
                  "<cmd>Telescope live_grep<CR>"
                  {
                    noremap = true;
                    silent = true;
                    nowait = true;
                  }
                ];
                position = "center";
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            }
            {
              type = "padding";
              val = 2;
            }
            {
              type = "button";
              val = "      Quit Neovim    ";
              on_press.__raw = "function() vim.cmd[[qa]] end";
              opts = {
                shortcut = "q";
                keymap = [
                  "n"
                  "q"
                  "<cmd>qa<CR>"
                  {
                    noremap = true;
                    silent = true;
                    nowait = true;
                  }
                ];
                position = "center";
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
              };
            }
            {
              type = "padding";
              val = 2;
            }
            {
              opts = {
                hl = "Keyword";
                position = "center";
              };
              type = "text";
              val = "https://pubby.club/~/cisco";
            }
          ];
        }
      ];
    };
  };
}
