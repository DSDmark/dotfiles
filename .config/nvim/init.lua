require("core.keyf-function")
require("core.keymaps")
require("core.base")

-- checking path if exist
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- if not exist
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
