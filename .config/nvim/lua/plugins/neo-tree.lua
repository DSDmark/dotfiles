return	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
  config=function()
    require'neo-tree'.setup({window = {width = 15,
    height = 15,
    auto_expand_width = true 
    }})
  end
	
	}

