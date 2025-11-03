_: {
  plugins.noice = {
    enable = true;
    settings = {
      lsp = {
        override = {
          "vim.lsp.util.convert_input_to_markdown_lines" = true;
          "vim.lsp.util.stylize_markdown" = true;
          "cmp.entry.get_documentation" = true;
        };
        progress = {
          enabled = false;
        };
        hover = {
          enabled = true;
          silent = false;
        };
        signature = {
          enabled = true;
          auto_open = {
            enabled = true;
          };
        };
        message = {
          enabled = true;
        };
      };
      presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
        inc_rename = false;
        lsp_doc_border = true;
      };
      cmdline = {
        enabled = false;
      };
      messages = {
        enabled = false;
      };
      notify = {
        enabled = false;
      };
      routes = [
        {
          filter = {
            event = "msg_show";
            kind = "";
            find = "written";
          };
          opts = {
            skip = true;
          };
        }
      ];
      views = {
        popup = {
          border = {
            style = "rounded";
          };
          win_options = {
            winblend = 0;
            winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder";
          };
        };
        hover = {
          border = {
            style = "rounded";
          };
          position = {
            row = 2;
            col = 2;
          };
        };
        confirm = {
          border = {
            style = "rounded";
          };
        };
      };
    };
  };
}
