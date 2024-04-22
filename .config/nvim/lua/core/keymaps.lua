-- Leader key
vim.g.mapleader = ","

-- Toggle to normal mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })

-- Map <leader>w to save the current buffer
vim.api.nvim_set_keymap('n', '<leader>w', ':w!<CR>', { noremap = true })

-- Map <leader>q to quit Neovim
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true })

-- Map <C-z> to do nothing (zsh: suspended nvim, to not send nvim background) 
vim.api.nvim_set_keymap('n', '<C-z>', '<NOP>', { noremap = true, silent = true })

-- Tree sitter 
vim.keymap.set("n", "<leader>e", ":Neotree toggle last<CR>")

-- closing tab
vim.api.nvim_set_keymap("n","<leader>x",":x!<CR>",{noremap = ture})

-- popover for defination
vim.keymap.set("n","<leader>m",vim.lsp.buf.hover,{})

-- code actions
vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{})

-- navigate to windows 
vim.api.nvim_set_keymap('n', '<S-h>', ':wincmd h<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-l>', ':wincmd l<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-k>', ':wincmd k<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-j>', ':wincmd j<CR>', {noremap = true, silent = true})



