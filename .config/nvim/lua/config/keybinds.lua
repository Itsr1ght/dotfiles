-- LEADER KEY
vim.g.mapleader = " "


-- key bindings
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)


-- bindings for overriding the copy and paste with system one
vim.keymap.set("v", "y", '"+y')
vim.keymap.set("n", "p", '"+p')
