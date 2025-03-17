local options = {
  ensure_installed = {
    "vim",
    "vimdoc",
    "bash",
    "markdown",
    "dockerfile",
    "lua",
    "go",
    "c",
    "cpp",
    "python",
    "html",
    "css",
    "typescript",
    "javascript",
    "tsx",
    "vue",
    "java",
    "sql"
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
