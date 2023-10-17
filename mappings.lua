local M = {}

M.disabled = {
	n = {
		["jk"] = ""
	}
}

M.abc = {
  n = {
	["<leader>h"] = { "<cmd>:Stdheader <CR>" },
    ["x"] = { '"_x"' },
    ["<leader>if"] = { "=i{" },
	["<leader>w"] = {"<cmd>:w <CR>"},
	["<leader>q"] = {"<cmd>:qa <CR>"},
	["<leader>tt"] = {
		function()
			require("base46").toggle_transparency()
		end,
		"toggle transparency",
	},
	["<S-t>"] = {
		function()
			require("base46").toggle_theme(0)
		end,
		"toggle transparency",
	},
  },
  i = {
    ["<C-j>"] = { "<cmd>m +1 <CR>" },
    ["<C-k>"] = { "<cmd>m -2 <CR>" },
    ["jk"] = { "<ESC>"}
  },
  v = {
    ["<C-j>"] = { ":m '>+1<CR>gv=gv" },
    ["<C-k>"] = { ":m '>-2<CR>gv=gv" }
  }
}

return M
