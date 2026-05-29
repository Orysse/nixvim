{
  flake.modules.nixvim.vimtex =
    { pkgs, ... }:
    {
      plugins.fzf-lua.enable = true;

      plugins.vimtex = {
        enable = true;
        settings = {
          view_method = "zathura";
          syntax_enabled = false;
          syntax_conceal_disable = true;
          quickfix_mode = 0;
        };

        package = pkgs.vimPlugins.vimtex.overrideAttrs (old: {
          doCheck = false;
        });

        texlivePackage = pkgs.texlive.combine {
          inherit (pkgs.texlive) scheme-full;
        };
      };

      autoCmd = [
        {
          event = [ "FileType" ];
          pattern = [ "tex" ];
          command = "setlocal syntax=off";
        }
      ];

      keymaps = [
        {
          mode = "n";
          key = "<leader>ll";
          action = "<cmd>VimtexCompile<CR>";
          options = {
            desc = "Toggle LaTeX compilation";
            silent = true;
          };
        }
        {
          mode = "n";
          key = "<leader>lv";
          action = "<cmd>VimtexView<CR>";
          options = {
            desc = "View PDF";
            silent = true;
          };
        }
        {
          mode = "n";
          key = "<leader>lc";
          action = "<cmd>VimtexClean<CR>";
          options = {
            desc = "Clean auxiliary files";
            silent = true;
          };
        }
        {
          mode = "n";
          key = "<leader>lC";
          action = "<cmd>VimtexClean!<CR>";
          options = {
            desc = "Clean all files including PDF";
            silent = true;
          };
        }
        {
          mode = "n";
          key = "<leader>lk";
          action = "<cmd>VimtexStop<CR>";
          options = {
            desc = "Stop compilation";
            silent = true;
          };
        }
        {
          mode = "n";
          key = "<leader>lK";
          action = "<cmd>VimtexStopAll<CR>";
          options = {
            desc = "Stop all compilations";
            silent = true;
          };
        }
        {
          mode = "n";
          key = "<leader>lt";
          action = "<cmd>VimtexTocToggle<CR>";
          options = {
            desc = "Toggle table of contents";
            silent = true;
          };
        }
        {
          mode = "n";
          key = "<leader>li";
          action = "<cmd>VimtexInfo<CR>";
          options = {
            desc = "VimTeX info";
            silent = true;
          };
        }
        {
          mode = "n";
          key = "<leader>ls";
          action = "<cmd>VimtexStatus<CR>";
          options = {
            desc = "Compilation status";
            silent = true;
          };
        }
        {
          mode = [
            "x"
            "o"
          ];
          key = "ie";
          action = "<Plug>(vimtex-ie)";
          options.desc = "Inner environment";
        }
        {
          mode = [
            "x"
            "o"
          ];
          key = "ae";
          action = "<Plug>(vimtex-ae)";
          options.desc = "Around environment";
        }
        {
          mode = [
            "x"
            "o"
          ];
          key = "i$";
          action = "<Plug>(vimtex-i$)";
          options.desc = "Inner math";
        }
        {
          mode = [
            "x"
            "o"
          ];
          key = "a$";
          action = "<Plug>(vimtex-a$)";
          options.desc = "Around math";
        }
        {
          mode = [
            "x"
            "o"
          ];
          key = "id";
          action = "<Plug>(vimtex-id)";
          options.desc = "Inner delimiter";
        }
        {
          mode = [
            "x"
            "o"
          ];
          key = "ad";
          action = "<Plug>(vimtex-ad)";
          options.desc = "Around delimiter";
        }
      ];

      extraConfigLua = ''
        vim.api.nvim_create_autocmd("User", {
          pattern = "VimtexEventCompileSuccess",
          callback = function()
            vim.notify("Compilation successful", vim.log.levels.INFO)
          end,
        })

        vim.api.nvim_create_autocmd("User", {
          pattern = "VimtexEventCompileFailed",
          callback = function()
            vim.notify("Compilation failed", vim.log.levels.ERROR)
          end,
        })
      '';
    };
}
