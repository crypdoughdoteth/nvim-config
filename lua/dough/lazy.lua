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
        'lukas-reineke/indent-blankline.nvim',
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

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 50
        end,

        config = function()
            local status_ok, which_key = pcall(require, "which-key")
            if not status_ok then
                return
            end
            -- Set timeout
            vim.o.timeout = true
            vim.o.timeoutlen = 50

            -- Custom setup
            local setup = {
                plugins = {
                    marks = true,     -- shows a list of your marks on ' and `
                    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
                    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
                    -- No actual key bindings are created
                    spelling = {
                        enabled = true,   -- enabling this will show WhichKey when pressing z= to select spelling suggestions
                        suggestions = 20, -- how many suggestions should be shown in the list?
                    },
                    presets = {
                        operators = true,    -- adds help for operators like d, y, ...
                        motions = true,      -- adds help for motions
                        text_objects = true, -- help for text objects triggered after entering an operator
                        windows = true,      -- default bindings on <c-w>
                        nav = true,          -- misc bindings to work with windows
                        z = true,            -- bindings for folds, spelling and others prefixed with z
                        g = true,            -- bindings for prefixed with g
                    },
                },
                -- add operators that will trigger motion and text object completion
                -- to enable all native operators, set the preset / operators plugin above
                operators = {
                    gc = "Comments"
                },
                key_labels = {
                    -- override the label used to display some keys. It doesn't effect WK in any other way.
                    -- For example:
                    ["<space>"] = "SPC",
                    ["<cr>"] = "RET",
                    ["<tab>"] = "TAB",
                },
                motions = {
                    count = true,
                },
                icons = {
                    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
                    separator = "➜", -- symbol used between a key and it's label
                    group = "+", -- symbol prepended to a group
                },
                popup_mappings = {
                    scroll_down = "<c-d>", -- binding to scroll down inside the popup
                    scroll_up = "<c-u>",   -- binding to scroll up inside the popup
                },
                window = {
                    border = "none",            -- none, single, double, shadow
                    position = "bottom",        -- bottom, top
                    margin = { 1, 0, 1, 0.55 }, -- [top, right, bottom, left]. Between 0 and 1 will be treated as a percentage
                    padding = { 1, 2, 1, 2 },   -- extra window padding [top, right, bottom, left]
                    winblend = 20,              -- value between 0-100 0 for fully opaque and 100 for fully transparent
                    zindex = 1000,              -- positive value to position WhichKey above other floating windows.
                },
                layout = {
                    height = {
                        min = 4,
                        max = 50,
                    }, -- min and max height of the columns
                    width = {
                        min = 20,
                        max = 50,
                    },                  -- min and max width of the columns
                    spacing = 1,        -- spacing between columns
                    align = "left",     -- align columns left, center or right
                },
                ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
                hidden = {
                    "<silent>",
                    "<cmd>",
                    "<Cmd>",
                    "<CR>",
                    "^:",
                    "^ ",
                    "^call ",
                    "^lua "
                },                 -- hide mapping boilerplate
                show_help = true,  -- show a help message in the command line for using WhichKey
                show_keys = true,  -- show the currently pressed key and its label as a message in the command line
                triggers = "auto", -- automatically setup triggers
                -- triggers = {"<leader>"} -- or specifiy a list manually
                -- list of triggers, where WhichKey should not wait for timeoutlen and show immediately
                triggers_nowait = {
                    -- marks
                    "`",
                    "'",
                    "g`",
                    "g'",
                    -- registers
                    '"',
                    "<c-r>",
                    -- spelling
                    "z=",
                },
                triggers_blacklist = {
                    -- list of mode / prefixes that should never be hooked by WhichKey
                    -- this is mostly relevant for keymaps that start with a native binding
                    i = { "j", "k", "<leader>" },
                    v = { "j", "k" },
                },
                -- disable the WhichKey popup for certain buf types and file types.
                -- Disabled by default for Telescope
                disable = {
                    buftypes = {},
                    filetypes = {},
                },
            }
            which_key.setup(setup)

            -- Map the keys as necessary
            local mappings = {
                [" "] = {
                    name = "Space",
                    ["c"] = {
                        name = "Code",
                        ["c"] = "Comment"
                    },
                    ["d"] = "Debug",
                    ["e"] = "Exit",
                    ["f"] = "File",
                    ["h"] = "Highlight",
                    ["g"] = "Goto",
                    ["p"] = "Open",
                    ["n"] = "Swap",
                    ["t"] = "Terminal",
                    ["w"] = "Workspace",
                    ["y"] = "Yank",
                    ["?"] = "Help",
                },
            }

            -- Options
            local opts = {
                mode = { "n" }, -- NORMAL mode
                -- prefix: use "<leader>f" for example for mapping everything related to finding files
                -- the prefix is prepended to every mapping part of `mappings`
                prefix = "",
                buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
                silent = true,  -- use `silent` when creating keymaps
                noremap = true, -- use `noremap` when creating keymaps
                nowait = false, -- use `nowait` when creating keymaps
                expr = false,   -- use `expr` when creating keymaps
            }


            which_key.register(mappings, opts)

            local visual_mappings = {
                [" "] = {
                    name = "Space",
                    ["c"] = { --
                        name = "Code",
                        ["c"] = "Comment"
                    },
                    ["g"] = "Goto",
                    ["y"] = "Yank",
                    ["p"] = "Open",
                    ["?"] = "Help",
                },
                ["g"] = {
                    name = "Goto"
                }
            }

            -- Options
            local visual_opts = {
                mode = { "v" }, -- NORMAL mode
                -- prefix: use "<leader>f" for example for mapping everything related to finding files
                -- the prefix is prepended to every mapping part of `mappings`
                prefix = "",
                buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
                silent = true,  -- use `silent` when creating keymaps
                noremap = true, -- use `noremap` when creating keymaps
                nowait = false, -- use `nowait` when creating keymaps
                expr = false,   -- use `expr` when creating keymaps
            }
            which_key.register(visual_mappings, visual_opts)
        end
    },

}
local opts = {}

require("lazy").setup(plugins, opts)
