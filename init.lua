-- Sets leader key comma into global vim --
vim.g.mapleader = "," 

-- alias ESC with jj and jk --
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

-- set relative number and number default upon opening nvim --
vim.o.relativenumber = true
vim.o.number = true

-- use ,w and ,s for split windows --
vim.api.nvim_set_keymap('n', '<leader>w', '<Cmd>vsplit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>s', '<Cmd>split<CR>', { noremap = true })

-- NERDTree mapping
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeToggle<CR>', { noremap = true })

-- this will run the packer.lua script
require('packer_plugins')

-- Add vimrc config to neovim
vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/.vimrc
]])

