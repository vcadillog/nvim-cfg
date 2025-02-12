-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use { "nvim-neotest/nvim-nio" }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('joshdick/onedark.vim')

    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-lua/plenary.nvim')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lua'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'}
        }
    }

    use('ThePrimeagen/vim-be-good')

    use('BenGH28/neo-runner.nvim', {run  = ':UpdateRemotePlugins'})

    use('numToStr/Comment.nvim')

    use ({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })
    use({'mfussenegger/nvim-dap'})
    use({"rcarriga/nvim-dap-ui"})
    use({'nvim-tree/nvim-web-devicons'})
    use({"romgrk/barbar.nvim",
    requires = {
        'lewis6991/gitsigns.nvim'}
    })
    use('norcalli/nvim-colorizer.lua')
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
        end}
    end)
