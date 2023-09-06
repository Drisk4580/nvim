local M = {}

function M.setup()
    local keymap = vim.keymap
    keymap.set('n', '<Up>', '<Nop>')
    keymap.set('n', '<Left>', '<Nop>')
    keymap.set('n', '<Right>', '<Nop>')
    keymap.set('n', '<Down>', '<Nop>')

    keymap.set('x', '<Up>', '<Nop>')
    keymap.set('x', '<Left>', '<Nop>')
    keymap.set('x', '<Right>', '<Nop>')
    keymap.set('x', '<Down>', '<Nop>')
end

return M
