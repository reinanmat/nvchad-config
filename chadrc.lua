---@type ChadrcConfig
local M = {}

M.ui = {
	theme = 'rosepine',
	transparency = true,
	statusline = {
		theme = "minimal"
	},
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
