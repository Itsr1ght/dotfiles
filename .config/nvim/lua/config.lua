-- Setting main leader to space
vim.g.mapleader = " "

-- Setting the tab size to 4 and enabling number
vim.o.mouse = 'nv'
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.winborder = 'rounded'
vim.o.clipboard = 'unnamedplus'

-- importing the LSP configuration file from config folder
require('config.lsp')
require('config.treesitter')
require('config.colorscheme')
require('config.neogit')
require('config.telescope')
require('config.nvim-web-devicons')
