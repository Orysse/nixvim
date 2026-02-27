{
  flake.modules.nixvim.plugins.blink-cmp = {
    plugins = {
      blink-cmp = {
        enable = true;
        settings = {
          appearance = {
            use_nvim_cmp_as_default = true;
            nerd_font_variant = "mono";
          };

          completion = {
            accept = {
              auto_brackets = {
                enabled = true;
              };
            };

            menu = {
              border = "rounded";
              winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None";
              draw = {
                columns = [
                  [ "kind_icon" ]
                  [
                    "label"
                    "label_description"
                  ]
                  [ "source_name" ]
                ];
              };
            };

            documentation = {
              auto_show = true;
              auto_show_delay_ms = 200;
              window = {
                border = "rounded";
              };
            };

            ghost_text = {
              enabled = true;
            };

            list.selection = {
              preselect = false;
            };
          };

          sources = {
            default = [
              "lsp"
              "path"
              "snippets"
            ];
          };

          keymap = {
            "<CR>" = [
              "accept"
              "fallback"
            ];
            "<C-space>" = [
              "show"
              "show_documentation"
              "hide_documentation"
            ];
            "<C-e>" = [ "hide" ];
            "<C-k>" = [
              "select_prev"
              "fallback"
            ];
            "<C-j>" = [
              "select_next"
              "fallback"
            ];
            "<C-u>" = [
              "scroll_documentation_up"
              "fallback"
            ];
            "<C-d>" = [
              "scroll_documentation_down"
              "fallback"
            ];
            "<Tab>" = [
              "snippet_forward"
              "select_next"
              "fallback"
            ];
            "<S-Tab>" = [
              "snippet_backward"
              "select_prev"
              "fallback"
            ];
          };
        };
      };
    };
  };
}
