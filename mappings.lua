local M = {}

M.abc = {
  n = {
    ["x"] = { '"_x"' },
    ["<leader>if"] = { "=i{" },
  },
  i = {
    ["<C-j>"] = { "<cmd>m +1 <CR>" },
    ["<C-k>"] = { "<cmd>m -2 <CR>" },
    ["jk"] = { "<ESC>", opts = { nowait = true }}
  },
  v = {
    ["<C-j>"] = { ":m '>+1<CR>gv=gv" },
    ["<C-k>"] = { ":m '>-2<CR>gv=gv" }
  }
}

return M
