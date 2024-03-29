vim.g.mapleader = " "

require('config.lazy')
require('config.options')
require('config.keymaps')
vim.cmd([[colorscheme tokyonight]])

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
