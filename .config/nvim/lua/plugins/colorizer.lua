return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup({
			"css",
			"javascript",
			html = { mode = "background" },
		}, { mode = "foreground" })
	end,
}
