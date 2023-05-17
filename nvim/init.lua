vim.g.mapleader = " "

require('config.lazy')
require('config.options')

-- vim.cmd([[
-- augroup numbertoggle
--   autocmd!
--   autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
--   autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
-- augroup END
-- ]])
--
-- -- For WSL Clipboard functionality
-- vim.cmd([[
-- let g:clipboard = {
--     \   'name': 'WslClipboard',
--     \   'copy': {
--     \      '+': 'clip.exe',
--     \      '*': 'clip.exe',
--     \    },
--     \   'paste': {
--     \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--     \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--     \   },
--     \   'cache_enabled': 0,
--     \ }
-- ]])
