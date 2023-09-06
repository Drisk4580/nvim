local util = require('configs.util')

return {
    {
        'nvim-neo-tree/neo-tree.nvim',
        lazy = true,
        dependencies = {
            'MunifTanjim/nui.nvim'
        },
        keys = {
            {
                '<leader>e',
                function()
                    require('neo-tree.command').execute({ toggle = true, })
                end,
            }
        },
        opts = {
            filesystem = {
                hijack_netrw_behavior = 'open_current',
            },
        },
    },
    {
        'nvim-telescope/telescope.nvim',
        keys = {
            { '<leader>ff', util.telescope('files') },
            { '<leader>lg', util.telescope('live_grep') },
            { '<leader>fb', '<CMD>Telescope buffers<CR>' },
        },
    },
}
