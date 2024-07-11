vim.keymap.set("i", "<C-q>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

vim.keymap.set("i", "<C-d>", "<Plug>(copilot-next)")
vim.keymap.set("i", "<C-w>", "<Plug>(copilot-previous)")
