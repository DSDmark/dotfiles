-- Leader key
vim.g.mapleader = ","

-- Toggle to normal mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })

-- Map <leader>w to save the current buffer
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true })

-- Map <leader>q to quit Neovim
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true })

