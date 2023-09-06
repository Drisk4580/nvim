local M = {}

local opt = vim.opt

M.indent = 4
M.options = {
	autoindent = true,
	number = true,
	relativenumber = true,
	termguicolors = true,
	expandtab = true,
	ignorecase = true,
}

function M.setup()
	opt.tabstop = M.indent
	opt.shiftwidth = M.indent

	for option, value in pairs(M.options) do
		opt[option] = value
	end

    local mappings = require('configs.mappings')
    mappings.setup()

    local plugins = require('configs.plugins')
    plugins:bootstrap()
    plugins.load()
end

return M
