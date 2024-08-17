require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

-- ====================================================

-- Text line wrapping toggle
map("n", "<leader>z", "<cmd>set wrap!<cr>")

-- Vertical reside mappings
map("n", "<C-A>", ":vertical resize +2<CR>")

-- Save and quit mappings
map("n", "<leader>q", "<cmd>x!<cr>")
--
-- -- Saving file 
map("n", "<leader>w", "<cmd>w!<cr>",{ noremap = true, desc = "quit" })

-- Command mode
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Inserting to normal mode
map("i", "jj", "<ESC>")


-- ====================================================

-- local map = vim.keymap.set
--
-- -- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- -- insert mode
-- map("i", "jj", "<Esc>", { silent = true })
-- -- map("t", "jj", "<C-\\><C-n>", { silent = true })
-- map("t", "<Esc>", "<C-\\><C-n>", { silent = true })
--
-- -- files
-- map("n", "<leader><space>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
-- map("n", "<leader>fs", "<cmd>w<cr>", { noremap = true, desc = "save buffer" })
-- map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
-- map("n", "<leader>cd", "<cmd>cd %:p:h<cr>", { noremap = true, desc = "cd to this file" })
-- map("n", "<leader>qq", "<cmd>qa<cr>", { noremap = true, desc = "quit" })
-- map("n", "<leader>/", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
--
-- -- buffers
-- map("n", "<leader><tab>", "<cmd>b#<cr>", { noremap = true, desc = "previously active buffer" })
-- map("n", "<leader>bb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
-- map("n", "<leader>bo", "<cmd>%bd|e#|bd#<cr>", { noremap = true, desc = "delete other buffers" })
--
-- map("n", "L", function()
-- 	require("nvchad.tabufline").next()
-- end, { desc = "buffer goto next" })
--
-- map("n", "H", function()
-- 	require("nvchad.tabufline").prev()
-- end, { desc = "buffer goto prev" })
--
-- map("n", "<leader>bn", function()
-- 	require("nvchad.tabufline").next()
-- end, { desc = "buffer goto next" })
--
-- map("n", "<leader>bp", function()
-- 	require("nvchad.tabufline").prev()
-- end, { desc = "buffer goto prev" })
--
-- map("n", "<leader>bd", function()
-- 	require("nvchad.tabufline").close_buffer()
-- end, { desc = "buffer close" })
--
-- map("n", "<leader>bk", function()
-- 	require("nvchad.tabufline").close_buffer()
-- end, { desc = "buffer close" })
--
-- -- windows
-- map("n", "<leader>ww", "<C-w><C-w>", { desc = "cycle windows" })
-- map("n", "<leader>wo", "<C-w>o", { noremap = true, desc = "delete other windows" })
-- map("n", "<leader>wd", "<C-w>q", { desc = "close window" })
-- map("n", "<leader>wq", "<C-w>q", { desc = "close window" })
-- map("n", "<leader>wo", "<C-w>o", { desc = "close other windows" })
-- map("n", "<leader>ws", "<C-w>s", { desc = "split window horisontally" })
-- map("n", "<leader>wh", "<C-w>s", { desc = "split window horisontally" })
-- map("n", "<leader>wv", "<C-w>v", { desc = "split window vertically" })
-- map("n", "<leader>w=", "<C-w>=", { desc = "make window sizes equal" })
-- map("n", "<C-left>", "<cmd>vert res -2<cr>")
-- map("n", "<C-right>", "<cmd>vert res +2<cr>")
-- map("n", "<C-down>", "<cmd>res -2<cr>")
-- map("n", "<C-up>", "<cmd>res +2<cr>")
-- map({ "n", "v" }, "<C-h>", "<C-w>h", { desc = "switch window left" })
-- map({ "n", "v" }, "<C-l>", "<C-w>l", { desc = "switch window right" })
-- map({ "n", "v" }, "<C-j>", "<C-w>j", { desc = "switch window down" })
-- map({ "n", "v" }, "<C-k>", "<C-w>k", { desc = "switch window up" })
-- map("i", "<C-h>", "<esc><C-w>h", { desc = "switch window left" })
-- map("i", "<C-l>", "<esc><C-w>l", { desc = "switch window right" })
-- map("i", "<C-j>", "<esc><C-w>j", { desc = "switch window down" })
-- map("i", "<C-k>", "<esc><C-w>k", { desc = "switch window up" })
-- map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "switch window left" })
-- map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "switch window right" })
-- map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "switch window down" })
-- map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "switch window up" })
--
-- -- Emacs-like --
-- --- Navigation
-- map("!", "<C-b>", "<Left>", { silent = true })
-- map("!", "<C-f>", "<Right>", { silent = true })
-- map("i", "<C-p>", "<Up>", { silent = true })
-- map("i", "<C-n>", "<Down>", { silent = true })
-- map("!", "<C-a>", "<Home>", { silent = true })
-- map("!", "<C-e>", "<End>", { silent = true })
-- map("i", "<M-a>", "<C-o>(", { silent = true })
-- map("i", "<M-e>", "<C-o>)", { silent = true })
-- map("i", "<M-b>", "<C-Left>", { silent = true })
-- map("c", "<M-b>", "<S-Left>", { silent = true })
-- map("i", "<M-f>", "<C-o>e<Right>", { silent = true })
-- map("c", "<M-f>", "<S-Right>", { silent = true })
-- map("i", "<M-v>", "<PageUp>", { silent = true })
-- map("i", "<C-v>", "<PageDown>", { silent = true })
-- --- Copy & Paste
-- --- Editing
-- map("!", "<C-d>", "<Del>", { silent = true })
-- map("!", "<M-BS>", "<C-w>", { silent = true })
-- map("i", "<C-BS>", "<C-w>", { silent = true })
-- map("i", "<C-k>", function()
--   local col = vim.api.nvim_win_get_cursor(0)[2]
--   local line = vim.api.nvim_get_current_line()
--   if #line <= col then
--     return "<Del><C-o>dw"
--   end
--   return "<C-o>dw"
-- end, { silent = true, expr = true })
-- map("c", "<C-k>", "<C-f>d$<C-c><End>", { silent = true })
-- map("i", "<M-d>", function()
--   local col = vim.api.nvim_win_get_cursor(0)[2]
--   local line = vim.api.nvim_get_current_line()
--   if #line <= col then
--     return "<Del>"
--   end
--   return "<C-o>d$"
-- end, { silent = true, expr = true })
-- map("i", "<M-k>", "<C-o>d)", { silent = true })
-- --- Run command
-- map("t", "<M-x>", "<C-\\><C-n>:")
-- map("i", "<M-x>", "<Esc>:")
-- map({ "n", "v" }, "<M-x>", ":")
-- --- Run external command
-- map("i", "<M-!>", "<Esc>:!")
-- map("n", "<M-!>", ":!")
--
-- -- plugins
-- -- iron
-- -- map("n", "<leader>ris", function()
-- -- 	require("iron.nvim").IronRepl()
-- -- end, { desc = "start REPL" })
-- -- gen.nvim
-- map({ "n", "v" }, "<leader>oo", ":Gen<CR>")
-- map({ "n", "v" }, "<leader>ol", ":lua require('gen').select_model()<CR>")
-- -- git
-- map({ "n", "v" }, "<leader>gn", ":Neogit cwd=%:p:h<CR>")
-- map({ "n", "v" }, "<leader>gg", ":LazyGitCurrentFile<CR>")
-- -- lazy
-- map({ "n", "v" }, "<leader>l", ":Lazy<CR>")
--
-- -- overridings
-- map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
-- del("n", "<leader>b")
