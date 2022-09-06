-- local M = {}
--
--
-- -- V I M T E X --
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
