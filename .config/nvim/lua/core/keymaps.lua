-- Leader key
vim.g.mapleader = ","

-- Toggle to normal mode
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true })

-- Map <leader>w to save the current buffer
-- formating with build in client
vim.api.nvim_set_keymap("n", "<leader>w", ":w!<CR>:lua vim.lsp.buf.format()<CR>", { noremap = true })

-- Map <leader>q to quit Neovim
vim.api.nvim_set_keymap("n", "<leader>q", ":x!<CR>", { noremap = true })

-- Map <C-z> to do nothing (zsh: suspended nvim, to not send nvim background)
vim.api.nvim_set_keymap("n", "<C-z>", "<NOP>", { noremap = true, silent = true })

-- Tree sitter
vim.keymap.set("n", "<leader>e", ":Neotree toggle last<CR>")

-- closing tab
-- vim.api.nvim_set_keymap("n", "<leader>c", ":x!<CR>", { noremap = ture })

-- popover for defination
vim.keymap.set("n", "<leader>m", vim.lsp.buf.hover, {})

-- code actions
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- navigate to windows
vim.api.nvim_set_keymap("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })

-- text line wraping
vim.keymap.set("n", "<leader>z", ":set wrap!<CR>")

-- menu keymappings for incearing and decearing
vim.api.nvim_set_keymap("n", "<C-A>", ":vertical resize +2<CR>", { noremap = true })

-- jumptotab function
vim.api.nvim_set_keymap("n", "<leader><Tab>", ":lua JumpToTab()<CR>", { noremap = true, silent = true })
