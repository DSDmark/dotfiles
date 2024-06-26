return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				width = 25,
				height = 15,
				auto_expand_width = false,
				filesystem = {
					follow_current_file = true,
					hijack_netrw_behavior = "open_default",
					filtered_items = {
						visible = true,
						show_hidden_count = true,
						hide_dotfiles = true,
						hide_gitignored = true,
					},
				},
				mappings = {
					["l"] = "open",
				},
			},
		})
	end,
}
