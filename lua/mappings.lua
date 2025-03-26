require "nvchad.mappings"

local map = vim.keymap.set

-- DISABLE BUFFERLINE
vim.keymap.del("n", "<Tab>", {})

-- NORMAL MODE
map("n", ";", ":", { desc = "Enter CMD mode" })
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })
map("n", "<leader>s", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "Copy file content" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>q", "<cmd>:qa <CR>", { desc = "close neovim" })
map("n", "<leader>w", "<cmd>:w <CR>", { desc = "save file" })
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
map("n", "x", '"_x')
map("n", "<leader>if", "=i{")

-- SPLITS
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- SWITCH BUFFERS
map("n", "<C-h>", "<C-w>h", { desc = "Buffer switch left" })
map("n", "<C-l>", "<C-w>l", { desc = "Buffer switch right" })
map("n", "<C-j>", "<C-w>j", { desc = "Buffer switch down" })
map("n", "<C-k>", "<C-w>k", { desc = "Buffer switch up" })

map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "toggle transparency" })

map("n", "<leader>tn", function()
  require("base46").toggle_theme(0)
end, { desc = "toggle theme" })

-- MOVE LINES
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down with in insert mode" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up with in insert mode" })
map("n", "<A-k>", "<cmd>m .-2 <CR>==", { desc = "move the line up in normal mode" })
map("n", "<A-j>", "<cmd>m .+1 <CR>==", { desc = "move the line down in normal mode" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "move the line up in visual mode" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "move the line down in visual mode" })

-- TELESCOPE
map("n", "<leader><leader>", ":Telescope find_files find_command=rg,--ignore,--hidden,--files --glob=!**/.git/**<CR>")

-- FORMATING
map({ "n", "v" }, "<leader>mp", function()
  require('conform').format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  })
end, { desc = "Format file or range (in visual mode)" })
