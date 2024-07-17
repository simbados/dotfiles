local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed = {
		"lua",
		"javascript",
		"typescript",
		"vim",
		"vimdoc",
		"go",
		"css",
		"vue",
		"regex",
		"bash",
		"markdown",
		"markdown_inline",
	},
	sync_install = false,
	auto_install = false,
	highlight = { enable = true },
})
