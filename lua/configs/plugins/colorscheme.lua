return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        lazy = true,
        config = function()
            vim.cmd([[colorscheme catppuccin]])
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        config = function()
            require('nvim-treesitter.configs').setup({
                highlight = {
                    enable = true,
                },
            })
        end
    },
    {
        'zefei/vim-colortuner',
        lazy = false,
    },
    {
        'sainnhe/everforest',
        lazy = false,
        priority = 1000,
    }
}
