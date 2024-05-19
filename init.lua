local g = vim.g
local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false

opt.smartindent = true
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = false

opt.wrap = false

opt.swapfile = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

g.user42 = 'revieira'
g.mail42 = 'revieira@student.42sp.org.br'

opt.fileencoding = 'utf-8'
opt.termguicolors = true

opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 5

opt.updatetime = 50

opt.clipboard:append("unnamedplus")
