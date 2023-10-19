local plugins = {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "plugins.configs.lspconfig"
			require "custom.configs.lspconfig"
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"clangd",
				"clang-format",
				"lua-language-server",
				"bash-language-server",
				"python-lsp-server",
			},
		},
	},
	{
		"42paris/42header",
		event = "VeryLazy",
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		enabled = false,
		-- config = function ()
		-- 	require "custom.configs.blankline"
		-- end,
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end
	},
	{
		'Wansmer/treesj',
		keys = { '<space>m', '<space>j', '<space>s' },
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
		},
		config = function()
			require('treesj').setup({})
		end,
}
}

return plugins
