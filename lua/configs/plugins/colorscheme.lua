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
            -- require('onedark').load()
        end
    },
    {
        'AlphaTechnolog/pywal.nvim',
        config = function()
            require('pywal').setup()
            vim.cmd('colorscheme pywal')
        end
    },
    {
        'morhetz/gruvbox',
        lazy = false,
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
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
    { 'tomasiser/vim-code-dark', name = "code-dark", lazy = false, priority = 1000 },
    { 'ntk148v/komau.vim', lazy = false, priority = 1000 },
    {
        'n1ghtmare/noirblaze-vim',
        lazy = false,
        priority = 1000,
    }
}
