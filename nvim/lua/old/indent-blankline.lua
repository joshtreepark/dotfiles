vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    filetype_exclude = {
        "help",
        "terminal",
        "alpha",
        "packer",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "mason",
        "",
    },
    buftype_exclude = { "terminal" },
    show_first_indent_level = false,
    -- space_char_blankline = " ",
    -- show_current_context = true,
    -- show_current_context_start = true,
}
