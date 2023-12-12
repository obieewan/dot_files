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
