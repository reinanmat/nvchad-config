local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local b = null_ls.builtins

local opts = {
  sources = {
    -- Web
    b.formatting.prettier,

    -- Golang
    b.formatting.gofumpt,
    b.formatting.goimports_reviser,
    b.formatting.golines,
  },
  on_attach = function(client, _)
    require("lsp-format").on_attach(client)
  end,
}
return opts
