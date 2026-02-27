{ lib, config, ... }:
{
  flake.modules.nixvim.plugins.nvim-ufo = {
    plugins = {
      nvim-ufo = {
        enable = true;

        settings = {
          fold_virt_text_handler = ''
            function(virtText, lnum, endLnum, width, truncate)
              local newVirtText = {}
              local suffix = ('   %d '):format(endLnum - lnum)
              local sufWidth = vim.fn.strdisplaywidth(suffix)
              local targetWidth = width - sufWidth
              local curWidth = 0
              for _, chunk in ipairs(virtText) do
                local chunkText = chunk[1]
                local chunkWidth = vim.fn.strdisplaywidth(chunkText)
                if targetWidth > curWidth + chunkWidth then
                  table.insert(newVirtText, chunk)
                else
                  chunkText = truncate(chunkText, targetWidth - curWidth)
                  local hlGroup = chunk[2]
                  table.insert(newVirtText, {chunkText, hlGroup})
                  chunkWidth = vim.fn.strdisplaywidth(chunkText)
                  -- str width returned from truncate() may less than 2nd argument, need padding
                  if curWidth + chunkWidth < targetWidth then
                    suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
                  end
                  break
                end
                curWidth = curWidth + chunkWidth
              end
              table.insert(newVirtText, {suffix, 'MoreMsg'})
              return newVirtText
            end
          '';
          provider_selector = ''
            function(bufnr, filetype, buftype)
              local ftMap = {
                vim = "indent",
                python = {"indent"},
                git = ""
              }

             return ftMap[filetype]
            end
          '';
        };
      };
    };

    keymaps =
      lib.mkIf (config.plugins.snacks.enable && lib.hasAttr "zen" config.plugins.snacks.settings)
        [
          {
            mode = "n";
            key = "zR";
            action.__raw = "require('ufo').openAllFolds";
            options.desc = "Toggle Zen Mode";
          }
          {
            mode = "n";
            key = "zM";
            action.__raw = "require('ufo').closeAllFolds";
            options.desc = "Toggle Zoom";
          }
        ];
  };
}
