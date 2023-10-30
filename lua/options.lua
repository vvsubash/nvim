--assigning space as leader key
vim.g.mapleader = ' '

vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.clipboard = 'unnamedplus'
vim.o.signcolumn = 'yes'
-- setting leader+e to open File Explorer
vim.api.nvim_set_keymap('n', '<Leader>e',':Explore<CR>', { noremap = true })
