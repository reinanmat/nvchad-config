local plugins = {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"c",
				"cpp",
				"python",
				"bash",
				"html",
				"css",
				"javascript",
			},
		},
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
		    "williamboman/mason-lspconfig.nvim",
		},
		opts = {
			ensure_installed = {
				"lua-language-server",
				"clangd",
				"pyright",
				"html-lsp",
				"css-lsp",
				"typescript-language-server",
			},
		}
	},
	{
		"neovim/nvim-lspconfig",
		config = function ()
			require "plugins.configs.lspconfig"
			require "custom.configs.lspconfig"
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		opts = {
			show_current_context = false,
		},
	},

	{ "rcarriga/nvim-notify", enabled = false },
}

return plugins
