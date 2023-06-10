-- Coding Related Plugins!

return {
-- send code to another session, REPL functionality
{
    "jpalardy/vim-slime",
    keys = {
        { "<Leader>sr", "<Plug>SlimeRegionSend", mode = {"x", "v"} },
        { "<Leader>sr", "<Plug>SlimeParagraphSend" },
        { "<Leader>sl", "<cmd>SlimeSendCurrentLine<CR>" },
    },
    config = function()
        vim.cmd [[
        let g:slime_target = "tmux"
        let g:slime_paste_file = expand("$HOME/.cache/nvim/slime_paste")
        let g:slime_no_mappings = 1
        let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
        ]]
    end,
},

-- A tpope vim commenter (Press gc)
-- Chose this over Comment.nvim since it's a lot lighter, and I don't need
-- advanced comments and is faster
{
    "tpope/vim-commentary",
    event = { "BufReadPost", "BufNewFile" },
},

-- Stata Syntax Highlighting
-- has other things such as snippets as well, but I'm not using them
-- currently...
{
    "poliquin/stata-vim",
    ft = { "stata" },
},

-- Align Using Special Characters
{
    "junegunn/vim-easy-align",
    keys = {
        { "ga", "<Plug>(EasyAlign)", silent = true, mode = {"n", "x"} }
    },
},

}
