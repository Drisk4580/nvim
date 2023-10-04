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
        'navarasu/onedark.nvim',
        name = 'onedark',
        lazy = false,
        priority = 1000,
        config = function()
            require('onedark').load()
        end
    }
}
