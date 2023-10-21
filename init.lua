-- Sets leader key comma into global vim --
vim.g.mapleader = "," 

-- alias ESC with jj and jk --
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

-- set relative number and number default upon opening nvim --
vim.o.relativenumber = true
vim.o.number = true
