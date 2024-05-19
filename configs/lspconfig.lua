local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "lua_ls", "clangd", "pyright" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}
end

lspconfig.lua_ls.setup {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			completion = {
				callSnippet = "Replace",
			},
		},
	},
}

lspconfig.clangd.setup {
	cmd = { "clangd", "--header-insertion=never" },
}

lspconfig.pyright.setup {
	cmd = { "pyright-langserver", "--stdio" },
	settings = {
		analysis = {
			autoSearchPaths = true,
			diagnosticMode = "openFilesOnly",
			useLibraryCodeForTypes = true
		}
	}
}

lspconfig.tsserver.setup {
	init_options = {
		preferences = {
			disableSuggestions = true,
		}
	}
}
