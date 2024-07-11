vim.keymap.set("n", "<leader>n", ":NvimTreeFocus<CR>", {})
vim.keymap.set("n", "<leader>qq", ":NvimTreeFindFile<CR>", {})
-- Neotree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("nvim-tree").setup()