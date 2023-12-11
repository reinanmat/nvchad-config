local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
	cmd = {"clangd", "--header-insertion=never"},
	on_attach = function(client, bufnr)
		client.server_capabilities.signatureHelpProvider = false
		client.server_capabilities.arguments = "--header-insertion=never"
		on_attach(client, bufnr)
	end,
	capabilities = capabilities,
}
