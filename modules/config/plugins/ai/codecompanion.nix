{
  flake.modules.nixvim.codecompanion =
    { pkgs, ... }:
    {
      plugins.codecompanion = {
        enable = true;
        settings = {
          adapters = {
            anthropic.__raw = ''
              function()
                return require("codecompanion.adapters").extend("anthropic", {
                  env = {
                    api_key = function()
                      return os.getenv("ANTHROPIC_API_KEY") or ""
                    end,
                  },
                  schema = {
                    model = {
                      default = "claude-sonnet-4-5-20251001",
                    },
                  },
                })
              end
            '';
          };
          strategies = {
            chat.adapter = "anthropic";
            inline.adapter = "anthropic";
            agent.adapter = "anthropic";
          };
          opts = {
            log_level = "ERROR";
          };
        };
      };

      extraConfigLua = ''
        vim.api.nvim_create_user_command("AIKey", function()
          local buf = vim.api.nvim_create_buf(false, true)
          local width, height = 60, 6
          local win = vim.api.nvim_open_win(buf, true, {
            relative = "editor",
            width = width,
            height = height,
            row = math.floor((vim.o.lines - height) / 2),
            col = math.floor((vim.o.columns - width) / 2),
            style = "minimal",
            border = "rounded",
            title = " Unlock Anthropic Key ",
            title_pos = "center",
          })

          local output = {}
          vim.fn.termopen("pass show anthropic/api-key", {
            on_stdout = function(_, data)
              for _, line in ipairs(data) do
                if line ~= "" then table.insert(output, line) end
              end
            end,
            on_exit = function(_, code)
              vim.schedule(function()
                vim.api.nvim_win_close(win, true)
                vim.api.nvim_buf_delete(buf, { force = true })
                if code == 0 and #output > 0 then
                  vim.fn.setenv("ANTHROPIC_API_KEY", output[1])
                  vim.notify("✓ Anthropic key loaded", vim.log.levels.INFO)
                else
                  vim.notify("Failed to load Anthropic key", vim.log.levels.ERROR)
                end
              end)
            end,
          })
          vim.cmd("startinsert")
        end, {})
      '';

      keymaps = [
        {
          mode = "n";
          key = "<leader>ak";
          action = "<cmd>AIKey<cr>";
          options.desc = "Load Anthropic key";
        }
        {
          mode = [
            "n"
            "v"
          ];
          key = "<leader>ac";
          action = "<cmd>CodeCompanionChat Toggle<cr>";
          options.desc = "Toggle chat";
        }
        {
          mode = [
            "n"
            "v"
          ];
          key = "<leader>aa";
          action = "<cmd>CodeCompanionActions<cr>";
          options.desc = "Actions";
        }
        {
          mode = "v";
          key = "<leader>as";
          action = "<cmd>CodeCompanionChat Add<cr>";
          options.desc = "Add selection to chat";
        }
        {
          mode = "n";
          key = "<leader>ai";
          action = "<cmd>CodeCompanion<cr>";
          options.desc = "Inline assistant";
        }
      ];
    };
}
