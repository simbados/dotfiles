vim.g.mapleader = " "
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

vim.opt.ttimeoutlen = 50
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.opt.shiftround = true
vim.opt.swapfile = false
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.guicursor = "n-v-c-i:block"
vim.opt.signcolumn = "yes:1"
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "qf" },
	command = [[nnoremap <buffer> <CR> <CR>:cclose<CR>]],
})
