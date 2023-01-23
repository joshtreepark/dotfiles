local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim"              -- Have packer manage itself
  use "nvim-lua/plenary.nvim"               -- Useful lua functions used by lots of plugins
  use 'numToStr/Comment.nvim'
  use 'goolord/alpha-nvim'                  -- a startup greeter!
  use 'lewis6991/impatient.nvim'            -- faster start up time!
  use "jpalardy/vim-slime"                  -- send code to another session
  use "junegunn/vim-easy-align"             -- easy alignment!
  use "lukas-reineke/indent-blankline.nvim" -- vertical indent lines
  use "nvim-telescope/telescope.nvim"       -- fuzzy finder for files/buffers/etc

  -- use({ "windwp/nvim-autopairs", commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec" }) -- Autopairs, integrates with both cmp and treesitter
  -- use({ "JoosepAlviste/nvim-ts-context-commentstring", commit = "88343753dbe81c227a1c1fd2c8d764afb8d36269" })
  -- use({ "kyazdani42/nvim-tree.lua", commit = "bdb6d4a25410da35bbf7ce0dbdaa8d60432bc243" })
  -- use({ "akinsho/bufferline.nvim", commit = "c78b3ecf9539a719828bca82fc7ddb9b3ba0c353" })
  -- use({ "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" })
  -- use({ "akinsho/toggleterm.nvim", commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8" })
  -- use({ "ahmedkhalf/project.nvim", commit = "541115e762764bc44d7d3bf501b6e367842d3d4f" })
  -- use("folke/which-key.nvim")

  -- Colorschemes
  use "folke/tokyonight.nvim"
  -- use("lunarvim/darkplus.nvim")

  -- cmp plugins
  use "hrsh7th/nvim-cmp"                   -- The completion plugin
  -- additional functionalities
  use "hrsh7th/cmp-buffer"                 -- buffer completions
  use "hrsh7th/cmp-path"                   -- path completions
  use "hrsh7th/cmp-nvim-lsp"               -- LSP completions
  use "hrsh7th/cmp-nvim-lua"               -- neovim Lua API
  use "saadparwaiz1/cmp_luasnip"           -- snippet completions

  -- snippets
  use "L3MON4D3/LuaSnip"             -- snippet engine
  -- use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  -- use "SirVer/ultisnips"

  -- LSP
  use "neovim/nvim-lspconfig"             -- enable LSP
  use "williamboman/mason.nvim"           -- manage LSP installs
  use "williamboman/mason-lspconfig.nvim" -- helper for mason
  -- use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Git
  use "tpope/vim-fugitive"
  use "lewis6991/gitsigns.nvim"

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    "phaazon/hop.nvim",
    branch = 'v2',
  }

  -- Language Specific
  use "lervag/vimtex"      -- LaTeX support & complier access
  use "poliquin/stata-vim" -- Stata Highlighting

  -- Orgmode for Neovim
  -- use {'nvim-orgmode/orgmode',
  --   -- ft = {'org'},
  --   config = function()
  --     require('orgmode').setup{}
  --     require('orgmode').setup_ts_grammar()
  --   end
  --   }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
