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
    "jdtls",
  },
  automatic_installation = false,
})
