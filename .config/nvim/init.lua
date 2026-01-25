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
vim.o.signcolumn = "yes"

require('keymap') -- keymaps in seperate lua file

-- importing the LSP configuration file from config folder

local config_dir = vim.fn.stdpath("config") .. "/lua/config"

for name, _ in vim.fs.dir(config_dir) do
    if name:match("%.lua$") then
        local module = "config." .. name:gsub("%.lua$", "")
        require(module)
    end
end
