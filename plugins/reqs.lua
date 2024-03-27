-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "

require("lazy").setup({
    -- Themes
    "tanvirtin/monokai.nvim",
    "shaunsingh/nord.nvim",
    "hachy/eva01.vim",

    -- Other
    "tpope/vim-fugitive",
    "tpope/vim-commentary",
    "lewis6991/gitsigns.nvim",
    "nvim-lualine/lualine.nvim",
    {
        'nvim-telescope/telescope.nvim',
        dependencies =
        {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons'
        }
    },

    -- LSP
    "williamboman/mason.nvim",
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            'neovim/nvim-lspconfig',
        },
    },
    {
        'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
            'neovim/nvim-lspconfig',
        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },

    --- DAP
    {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = {
            "mfussenegger/nvim-dap",
            "williamboman/mason.nvim",
        },
    },
    {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "nvim-neotest/nvim-nio"
        }
    }
  })
