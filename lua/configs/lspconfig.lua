require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

local function get_python_path(workspace)
  -- Use activated virtualenv.
  if vim.env.VIRTUAL_ENV then
    return vim.env.VIRTUAL_ENV .. '/bin/python'
  end

  -- Fallback to using pyenv if available.
  local match = vim.fn.glob(workspace .. '/.python-version')
  if match ~= '' then
    local f = io.open(match)
    if not f then
      return nil
    end
    local version = f:read('*all')
    f:close()
    return vim.fn.expand('~/.pyenv/versions/' .. version .. '/bin/python')
  end

  -- Fallback to system Python.
  return '/usr/bin/python'
end

local servers = {
  html = {},
  cssls = {},
  -- eslint = {},
  jdtls = {},

  tailwindcss = {
    cmd = { "tailwindcss-language-server", "--stdio" },
    filetypes = { "html", "css", "javascript", "typescript" },
    init_options = {
      userConfig = {
        css = {
          validate = true,
        },
      },
    }
  },

  ts_ls = {
    init_options = {
      plugins = {
        {
          name = "@vue/typescript-plugin",
          location = "/usr/local/lib/node_modules/@vue/language-server",
          languages = { "vue" },
        },
      },
    },
    settings = {
      typescript = {
        tsserver = {
          useSyntaxServer = false,
        },
        inlayHints = {
          includeInlayParameterNameHints = 'all',
          includeInlayParameterNameHintsWhenArgumentMatchesName = true,
          includeInlayFunctionParameterTypeHints = true,
          includeInlayVariableTypeHints = true,
          includeInlayVariableTypeHintsWhenTypeMatchesName = true,
          includeInlayPropertyDeclarationTypeHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
          includeInlayEnumMemberValueHints = true,
        },
      },
    },
    filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
  },

  volar = {
    init_options = {
      vue = {
        hybridMode = false,
      },
    },
    settings = {
      typescript = {
        inlayHints = {
          enumMemberValues = {
            enabled = true,
          },
          functionLikeReturnTypes = {
            enabled = true,
          },
          propertyDeclarationTypes = {
            enabled = true,
          },
          parameterTypes = {
            enabled = true,
            suppressWhenArgumentMatchesName = true,
          },
          variableTypes = {
            enabled = true,
          },
        },
      },
    },
  },

  lua_ls = {
    settings = {
      Lua = {
        hint = { enable = true },
        diagnostics = { globals = { "vim" } },
        workspace = {
          library = {
            ["${3rd}/luv/library"] = true,
            [vim.fn.expand "$VIMRUNTIME/lua"] = true,
            [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
            [vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
            [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
          },
          maxPreload = 100000,
          preloadFileSize = 10000,
        },
      },
    }
  },

  clangd = {
    cmd = { "clangd", "--header-insertion=never" },
  },

  gopls = {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gotmpl", "gowork" },
    root_dir = require("lspconfig/util").root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        completeUnimported = true,
        usePlaceholders = true,
        staticcheck = true,
      },
    },
  },

  pyright = {
    cmd = { "pyright-langserver", "--stdio" },
    settings = {
      python = {
        pythonPath = get_python_path(vim.fn.getcwd()),
        analysis = {
          typeCheckingMode = "off",
          autoSearchPaths = true,
          diagnosticMode = "openFilesOnly",
          useLibraryCodeForTypes = true,
          extraPaths = {
            "./core",
            "/home/reinan/.pyenv/versions/3.13.0/lib/python3.13/site-packages"
          },
        },
      },
    },
  },
}

for name, opts in pairs(servers) do
  opts.on_init = nvlsp.on_init
  opts.on_attach = nvlsp.on_attach
  opts.capabilities = nvlsp.capabilities

  require("lspconfig")[name].setup(opts)
end
