vim.pack.add({
    "https://github.com/anuvyklack/windows.nvim",
    -- optional
    "https://github.com/anuvyklack/middleclass",
    "https://github.com/anuvyklack/animation.nvim"
})

require('windows').setup()

local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end

vim.keymap.set('n', '<C-w>z', cmd 'WindowsMaximize')
vim.keymap.set('n', '<C-w>_', cmd 'WindowsMaximizeVertically')
vim.keymap.set('n', '<C-w>|', cmd 'WindowsMaximizeHorizontally')
vim.keymap.set('n', '<C-w>=', cmd 'WindowsEqualize')
