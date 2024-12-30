-- alias ESC with jj and jk --
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

-- use ,w and ,s for split windows --
vim.api.nvim_set_keymap('n', ',w', '<Cmd>vsplit<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ',s', '<Cmd>split<CR>', { noremap = true })

-- set relative number and number default upon opening nvim --
vim.o.relativenumber = true
vim.o.number = true

-- Window resizing
vim.api.nvim_set_keymap('n', '+', '<C-w>+', { noremap = true })
vim.api.nvim_set_keymap('n', '-', '<C-w>-', { noremap = true })
vim.api.nvim_set_keymap('n', '}', '<C-w>>', { noremap = true })
vim.api.nvim_set_keymap('n', '{', '<C-w><lt>', { noremap = true })

-- Easier window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

vim.api.nvim_set_keymap('i', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<C-w>l', { noremap = true })

-- Ruler
--vim.o.ruler = true


NVChad 2024/2025 Mappings

require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set
  
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Alias ESC with jj and jk
map("i", "jj", "<ESC>", { desc = "Map jj to ESC in insert mode" })
map("i", "jk", "<ESC>", { desc = "Map jk to ESC in insert mode" })

-- Use ,w and ,s for split windows
map("n", ",w", "<Cmd>vsplit<CR>", { desc = "Vertical split" })
map("n", ",s", "<Cmd>split<CR>", { desc = "Horizontal split" })

-- Set relative number and number default
vim.o.relativenumber = true
vim.o.number = true

-- Window resizing
map("n", "+", "<C-w>+", { desc = "Increase window height" })
map("n", "-", "<C-w>-", { desc = "Decrease window height" })
map("n", "}", "<C-w>>", { desc = "Increase window width" })
map("n", "{", "<C-w><", { desc = "Decrease window width" })

-- Easier window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to the left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to the window below" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to the window above" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to the right window" })

map("i", "<C-h>", "<C-w>h", { desc = "Move to the left window in insert mode" })
map("i", "<C-j>", "<C-w>j", { desc = "Move to the window below in insert mode" })
map("i", "<C-k>", "<C-w>k", { desc = "Move to the window above in insert mode" })
map("i", "<C-l>", "<C-w>l", { desc = "Move to the right window in insert mode" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

