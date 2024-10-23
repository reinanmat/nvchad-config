require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"clangd",
		"pyright",
		"gopls",
		"eslint",
		"ts_ls",
		"tailwindcss",
		"html",
		"cssls",
	},
	automatic_installation = false,
})
