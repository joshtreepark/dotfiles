local opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode       = "n",
--   insert_mode       = "i",
--   visual_mode       = "v",
--   visual_block_mode = "x",
--   term_mode         = "t",
--   command_mode      = "c",

-------------------------
--       NORMAL        --
-------------------------
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize -4<CR>", opts)
-- keymap("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -3<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Vim-Slime
-- keymap("n", "<Leader>cx", "<Plug>SlimeParagraphSend", opts)
-- keymap("n", "<Leader>cl", "<cmd>SlimeSendCurrentLine<CR>", opts)

-- Vim-Easy-Align
-- keymap("n", "ga", "<Plug>(EasyAlign)", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>", opts)

-- Hop
-- remove 's' key functionality
-- keymap("n", "s", "<cmd>HopWord<CR>", opts)
-- keymap("n", "S", "<cmd>HopChar2<CR>", opts)

-- keymap("n", "sw", "<cmd>HopWord<CR>", opts)
-- keymap("n", "sl", "<cmd>HopLineStart<CR>", opts)
-- keymap("n", "sc", "<cmd>HopChar1<CR>", opts)
-- keymap("n", "ss", "<cmd>HopChar2<CR>", opts)
-- keymap("n", "sp", "<cmd>HopPattern<CR>", opts)

-- Buffer Control
keymap("n", "<leader>bb", ":ls<CR>:b<space>", opts)
keymap("n", "<leader>bd", ":bd<CR>", opts)

-- Remove Whitespace
vim.cmd([[
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
]])

keymap("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/user/luasnip.lua<CR>")

-------------------------
--       INSERT        --
-------------------------
-- Press jk fast to exit insert mode
-- keymap("i", "jk", "<ESC>", opts)


-------------------------
--       VISUAL        --
-------------------------
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- vim-slime
-- keymap("v", "<Leader>cx", "<Plug>SlimeRegionSend", opts)


-------------------------
--    VISUAL BLOCK     --
-------------------------
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Vim-Slime
-- keymap("x", "<Leader>cx", "<Plug>SlimeRegionSend", opts)

-- Vim-Easy-Align
-- keymap("x", "ga", "<Plug>(EasyAlign)", opts)

-------------------------
--      TERMINAL       --
-------------------------
-- local term_opts = { silent = true }
--
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
