{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        theme = "catppuccin";
        global_status = true;

        section_separators = "";
        component_separators = "";
      };
      sections = {
        lualine_a = [ ];
        lualine_b = [ ];
        lualine_y = [ ];
        lualine_z = [ ];
        lualine_c = [ ];
        lualine_x = [ ];
      };
      inactive_sections = {
        lualine_a = [ ];
        lualine_b = [ ];
        lualine_y = [ ];
        lualine_z = [ ];
        lualine_c = [ ];
        lualine_x = [ ];
      };
    };
  };
  extraConfigLua = ''
    local lualine = require('lualine')

    -- Color table for highlights
    -- stylua: ignore
    local colors = {
        bg       = '#24273a',
        fg       = '#bbc2cf',
        yellow   = '#eed49f',
        cyan     = '#8bd5ca',
        darkblue = '#8aadf4',
        green    = '#a6da95',
        orange   = '#f5a97f',
        violet   = '#b7bdf8',
        purple   = '#c6a0f6',
        blue     = '#7dc4e4',
        red      = '#ed8796',
        white    = '#ffffff',
    }

    local conditions = {
        buffer_not_empty = function()
            return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
        end,
        hide_in_width = function()
            return vim.fn.winwidth(0) > 80
        end,
        check_git_workspace = function()
            local filepath = vim.fn.expand('%:p:h')
            local gitdir = vim.fn.finddir('.git', filepath .. ';')
            return gitdir and #gitdir > 0 and #gitdir < #filepath
        end,
    }

    -- Config
    local config = {
        options = {
            -- Disable sections and component separators
            component_separators = "",
            section_separators = "",
        },
        sections = {
            -- these are to remove the defaults
            lualine_a = {},
            lualine_b = {},
            lualine_y = {},
            lualine_z = {},
            -- These will be filled later
            lualine_c = {},
            lualine_x = {},
        },
        inactive_sections = {
            -- these are to remove the defaults
            lualine_a = {},
            lualine_b = {},
            lualine_y = {},
            lualine_z = {},
            lualine_c = {},
            lualine_x = {},
        },
    }

    -- Inserts a component in lualine_c at left section
    local function ins_left(component)
        table.insert(config.sections.lualine_c, component)
    end

    -- Inserts a component in lualine_x ot right section
    local function ins_right(component)
        table.insert(config.sections.lualine_x, component)
    end

    ins_left {
        function()
            return '▊'
        end,
        color = { fg = colors.white }, -- Sets highlighting of component
        padding = { left = 0, right = 1 }, -- We don't need space before this
    }

    ins_left {
        -- mode component
        function()
            return ''
        end,
        color = function()
            -- auto change color according to neovims mode
            local mode_color = {
                n = colors.red,
                i = colors.green,
                v = colors.blue,
                ['␖'] = colors.blue,
                V = colors.blue,
                c = colors.purple,
                no = colors.red,
                s = colors.orange,
                S = colors.orange,
                ['␓'] = colors.orange,
                ic = colors.yellow,
                R = colors.violet,
                Rv = colors.violet,
                cv = colors.red,
                ce = colors.red,
                r = colors.cyan,
                rm = colors.cyan,
                ['r?'] = colors.cyan,
                ['!'] = colors.red,
                t = colors.red,
            }
            return { fg = mode_color[vim.fn.mode()] }
        end,
        padding = { right = 1 },
    }

    ins_left {
        -- filesize component
        'filesize',
        cond = conditions.buffer_not_empty,
    }

    ins_left {
        'filename',
        cond = conditions.buffer_not_empty,
        color = { fg = colors.purple, gui = 'bold' },
    }

    ins_left { 'location' }

    ins_left { 'progress', color = { fg = colors.fg, gui = 'bold' } }

    ins_left {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        symbols = { error = ' ', warn = ' ', info = ' ' },
        diagnostics_color = {
            color_error = { fg = colors.red },
            color_warn = { fg = colors.yellow },
            color_info = { fg = colors.cyan },
        },
    }

    -- Insert mid section. You can make any number of sections in neovim :)
    -- for lualine it's any number greater then 2
    ins_left {
        function()
            return '%='
        end,
    }

    ins_left {
        -- Lsp server name .
        function()
            local msg = 'No Active Lsp'
            local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
            local clients = vim.lsp.get_active_clients()
            if next(clients) == nil then
                return msg
            end
            for _, client in ipairs(clients) do
                local filetypes = client.config.filetypes
                if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                    return client.name
                end
            end
            return msg
        end,
        icon = ' LSP:',
        color = { fg = '#ffffff', gui = 'bold' },
    }

    ins_right {
        'branch',
        color = { fg = colors.blue, gui = 'bold' },
        padding = { right = 3 },
    }

    ins_right {
        'diff',
        symbols = { added = ' ', modified = ' ', removed = ' ' },
        diff_color = {
            added = { fg = colors.green },
            modified = { fg = colors.orange },
            removed = { fg = colors.red },
        },
        cond = conditions.hide_in_width,
    }

    ins_right {
        function()
            return '▊'
        end,
        color = { fg = colors.white },
        padding = { left = 1 },
    }

    -- Now don't forget to initialize lualine
    lualine.setup(config)

  '';
}
