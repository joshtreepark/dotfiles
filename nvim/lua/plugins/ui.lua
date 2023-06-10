return {
-- statusline
{
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    event = "VeryLazy",
    opts = {
        options = {
            icons_enabled = true,
            theme = 'tokyonight',
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
            -- component_separators = { left = '', right = ''},
            -- section_separators = { left = '', right = ''},
            disabled_filetypes = {     -- Filetypes to disable lualine for.
                statusline = { "alpha" },  -- only ignores the ft for statusline.
                winbar = {},             -- only ignores the ft for winbar.
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline    = 1000,
                winbar     = 1000,
            }
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
    },
},

-- startup greeter!
{
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = "VimEnter",
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
},

-- indent guides for Neovim
{
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        -- char = "▏",
        char = "│",
        filetype_exclude = { "help", "alpha", "dashboard", "lazy", "mason" },
        show_trailing_blankline_indent = false,
        show_current_context = false,
        show_first_indent_level = false,
    },
},
}
