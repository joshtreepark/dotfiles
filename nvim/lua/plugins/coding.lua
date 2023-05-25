return {
  -- send code to another session, REPL functionality
  -- TODO: set lazy loading for commands
  {
  "jpalardy/vim-slime",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    vim.cmd [[
    let g:slime_target = "tmux"
    let g:slime_paste_file = expand("$HOME/.cache/nvim/slime_paste")
    let g:slime_no_mappings = 1
    let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
    ]]
  end,
  },

  {
    "tpope/vim-commentary",
    event = { "BufReadPost", "BufNewFile" },
  },
  {
    "poliquin/stata-vim",
    ft = { "stata" },
  },
}
