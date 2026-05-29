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

      keymaps = [
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
