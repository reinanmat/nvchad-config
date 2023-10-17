---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "rosepine",
	theme_toggle = {
		"rosepine",
		"catppuccin"
	},
	transparency = true,
	statusline = {
		theme = "minimal"
	},
	nvdash = {
		load_on_startup = true,
	}
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
