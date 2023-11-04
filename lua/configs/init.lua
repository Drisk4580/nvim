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
    colorcolumn = '80',
    scl = 'yes',
    background = 'dark'
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

    vim.cmd.colo('everforest')

    vim.fn.sign_define("DiagnosticSignError",
        { text = " ", texthl = "DiagnosticSignError" })
    vim.fn.sign_define("DiagnosticSignWarn",
        { text = " ", texthl = "DiagnosticSignWarn" })
    vim.fn.sign_define("DiagnosticSignInfo",
        { text = " ", texthl = "DiagnosticSignInfo" })
    vim.fn.sign_define("DiagnosticSignHint",
        { text = "󰌵", texthl = "DiagnosticSignHint" })

    vim.api.nvim_set_hl(0, "Normal", {})
    vim.api.nvim_set_hl(0, "NormalFloat", {})
    vim.api.nvim_set_hl(0, "NonText", {})
    vim.api.nvim_set_hl(0, "LineNr", {})
    vim.api.nvim_set_hl(0, "SignColumn", {})
    vim.api.nvim_set_hl(0, "Tab", {})

    for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
        vim.api.nvim_set_hl(0, group, {})
    end
end

return M
