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

    -- vim.cmd.colo('nightcat')

    vim.fn.sign_define("DiagnosticSignError",
        { text = " ", texthl = "DiagnosticSignError" })
    vim.fn.sign_define("DiagnosticSignWarn",
        { text = " ", texthl = "DiagnosticSignWarn" })
    vim.fn.sign_define("DiagnosticSignInfo",
        { text = " ", texthl = "DiagnosticSignInfo" })
    vim.fn.sign_define("DiagnosticSignHint",
        { text = "󰌵", texthl = "DiagnosticSignHint" })
end

return M
