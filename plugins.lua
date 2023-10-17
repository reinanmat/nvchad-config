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
				"python-lsp-server"
			}
		}
	},
	{
		"42paris/42header",
		event = "VeryLazy",
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function ()
			require "custom.configs.blankline"
		end,
	},
}

return plugins
