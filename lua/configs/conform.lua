local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    golang = { "golines" },
    vue = { "eslint_d", "prettier" },
    sql = { "sql-formatter" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    graphql = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
  },

  format_on_save = {
  	-- These options will be passed to conform.format()
  	timeout_ms = 500,
  	lsp_fallback = true,
  },
}

return options
