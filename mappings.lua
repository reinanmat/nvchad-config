local M = {}

M.disabled = {
	n = {
		["jk"] = ""
	}
}

M.mymaps = {
	n = {
		["<C-k>"] = { "<cmd>m -2 <CR>", "move the line up" },
		["<C-j>"] = { "<cmd>m +1 <CR>", "move the line down" },
		["<leader>h"] = { "<cmd>:Stdheader <CR>" },
		["x"] = { '"_x"' },
		["<leader>if"] = { "=i{" },
		["<leader>q"] = {"<cmd>:qa <CR>", "close neovim" },
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
			"toggle theme",
		},
	},
	i = {
		["<C-k>"] = { "<cmd>m -2 <CR>", "move the line up" },
		["<C-j>"] = { "<cmd>m +1 <CR>", "move the line down" },
		["jk"] = { "<ESC>", "escape insert mode "}
	},
	v = {
		["<C-k>"] = { ":m '>-2<CR>gv=gv", "move the line up" },
		["<C-j>"] = { ":m '>+1<CR>gv=gv", "move the line down" },
		["<leader>if"] = { "=i{" },
	}
}

vim.keymap.set("n", "<leader><leader>", function ()
	vim.cmd("so")
end)

return M
