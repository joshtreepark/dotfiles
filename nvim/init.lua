require "user.options"
require "user.impatient"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lualine"
require "user.vim-slime"
require "user.telescope"
require "user.treesitter"
require "user.gitsigns"
require "user.indent-blankline"
require "user.mason"
require "user.lsp" -- should come after mason
require "user.others"
require "user.alpha"
-- require("functions")
require "user.luasnip"

vim.cmd([[
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
]])
