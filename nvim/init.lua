local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("core.keymaps")
require("core.plugins")
require("core.plugin_opts.treesitter")
require("core.plugin_opts.nvim_tree")
require("core.plugin_opts.telescope")
require("core.plugin_opts.lsp_config")
require("core.plugin_opts.none-ls")
require("core.plugin_opts.cmp")
require("core.plugin_opts.oil")
require("core.plugin_opts.copilot")

vim.cmd([[colorscheme tokyonight-night]])
