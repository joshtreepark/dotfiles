local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup {
  ensure_installed = {"c", "cpp", "json", "lua", "python"},
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "stata" }, -- list of language that will be disabled
    -- additional_vim_regex_highlighting = { "stata" }
  },
  indent = { enable = true, disable = { "yaml" } },
}
