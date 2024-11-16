-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        "lervag/vimtex",
        lazy = false, -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_quickfix_mode = 2
            vim.g.vimtex_compiler_latexmk_engines = { ["_"] = "-lualatex -shell-escape" }
            vim.g.vimtex_indent_on_ampersands = 0
            vim.g.vimtex_view_method = 'sioyek'
            vim.g.matchup_override_vimtex = 1
            vim.g.latexindent_opt = "-m"
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    {
        'rose-pine/neovim',
        event = 'ColorScheme',
        name = 'rose-pine',
    },
    {
        'ellisonleao/gruvbox.nvim',
        --        event = 'ColorScheme',
        name = 'gruvbox',
        config = function()
            vim.cmd('colorscheme gruvbox')
        end

    },
    { "catppuccin/nvim",                 name = "catppuccin", priority = 1000 },
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    'rvmelkonian/move.vim',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'nvim-treesitter/playground',
    'theprimeagen/harpoon',
    'puremourning/vimspector',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            {
                "L3MON4D3/LuaSnip",
                -- follow latest release.
                version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
                -- install jsregexp (optional!).
                build = "make install_jsregexp"
            }
        }
    },

    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-nvim-lua',
    'neovim/nvim-lspconfig',
    'simrat39/rust-tools.nvim',

    -- Debugging
    'nvim-lua/plenary.nvim',
    'mfussenegger/nvim-dap',

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    },

    {
        'vyperlang/vim-vyper',
    },

    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },

    {
        "windwp/nvim-ts-autotag",
        config = function() require('nvim-ts-autotag').setup() end
    },
    'mfussenegger/nvim-jdtls',

    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
                theme = 'doom',
                config = {
                    header = { '',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '██████╗██████╗ ██╗   ██╗██████╗ ██████╗  ██████╗ ██╗   ██╗ ██████╗ ██╗  ██╗   ███████╗████████╗██╗  ██╗',
                        '█╔════╝██╔══██╗╚██╗ ██╔╝██╔══██╗██╔══██╗██╔═══██╗██║   ██║██╔════╝ ██║  ██║   ██╔════╝╚══██╔══╝██║  ██║',
                        '█║     ██████╔╝ ╚████╔╝ ██████╔╝██║  ██║██║   ██║██║   ██║██║  ███╗███████║   █████╗     ██║   ███████║',
                        '█║     ██╔══██╗  ╚██╔╝  ██╔═══╝ ██║  ██║██║   ██║██║   ██║██║   ██║██╔══██║   ██╔══╝     ██║   ██╔══██║',
                        '██████╗██║  ██║   ██║   ██║     ██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝██║  ██║██╗███████╗   ██║   ██║  ██║',
                        '╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝',
                        '                                                                                                       ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '                                                                                                           ',
                        '' }, --your header
                    center = {
                        {
                            icon = ' ',
                            icon_hl = 'Title',
                            desc = 'Browse Files',
                            desc_hl = 'String',
                            key = 'e',
                            keymap = ' ',
                            key_hl = 'Number',
                            key_format = ' %s', -- remove default surrounding `[]`
                            action = 'Ex'
                        },
                        {
                            icon = ' ',
                            desc = 'Ripgrep',
                            key = 'g',
                            keymap = ' ',
                            key_format = ' %s', -- remove default surrounding `[]`
                            action = 'Telescope live_grep'
                        },
                        {
                            icon = ' ',
                            desc = 'Mason',
                            key = 'm',
                            keymap = ' ',
                            key_format = ' %s', -- remove default surrounding `[]`
                            action = 'Mason'
                        },
                        {
                            icon = ' ',
                            desc = 'Lazy',
                            key = 'l',
                            keymap = ' ',
                            key_format = ' %s', -- remove default surrounding `[]`
                            action = 'Lazy'
                        },
                    },
                    footer = {} --your footer
                }
            }
        end,
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    },

}
local opts = {}

require("lazy").setup(plugins, opts)
