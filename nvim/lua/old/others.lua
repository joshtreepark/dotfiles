-- local M = {}

-- VIMTEX --
--
-- M.vimtex = function()
-- local present, vimtex = pcall(require, "vimtex")
--
-- if not present then
--   return
-- end

vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_view_skim_sync = 1

-- end
--
-- return M

-- HOP.nvim --
--
require('hop').setup()

-- COMMENT.nvim --
require('Comment').setup()


--[[
-- Ultisnips.vim --
--
-- vim.g.UltiSnipsExpandTrigger = '<tab>'

-- shortcut to go to next position
vim.g.UltiSnipsJumpForwardTrigger = '<c-j>'
-- shortcut to go to previous position
vim.g.UltiSnipsJumpBackwardTrigger = '<c-k>'
--]]
