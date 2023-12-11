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
				"java",
				"bash"
			},
		},
	},
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
				"csharp-language-server",
				"lua-language-server",
				"bash-language-server",
				"python-lsp-server",
				"java-language-server",
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
	},
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
}

return plugins
