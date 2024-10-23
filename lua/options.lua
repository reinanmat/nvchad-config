require "nvchad.options"

local g = {
	user42 = 'revieira',
	mail42 = 'revieira@student.42sp.org.br',
}

local tabSize = 4
local opt = {
	encoding = "utf-8",
	fileencoding = "utf-8",
	clipboard = "unnamedplus",
	-- Folds
	foldmethod = "expr",
	foldexpr = "v:lua.vim.treesitter.foldexpr()",
	foldcolumn = "0",
	foldtext = "",
	foldlevel = 99,
	foldlevelstart = 1,
	foldnestmax = 1,

	backup = false,
	swapfile = false,
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	undofile = true,

	-- IDENTATION
	tabstop = tabSize,
	softtabstop = tabSize,
	shiftwidth = tabSize,
	expandtab = false,
	number = true,
	relativenumber = true,
	emoji = true,
	termguicolors = true,
	backspace = "indent,eol,start",

	ignorecase = true,
	smartcase = true,
	smartindent = true,

	-- CURSOR
	cursorline = false,

	-- WRAP
	wrap = false,

	-- SPLITS
	splitright = true,
	splitbelow = true,

	scrolloff = 10,
	updatetime = 100,
}

for k, v in pairs(g) do
	vim.g[k] = v
end

for k, v in pairs(opt) do
	vim.opt[k] = v
end
