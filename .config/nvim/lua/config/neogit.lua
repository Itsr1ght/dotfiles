vim.pack.add(
    {
        "https://github.com/NeogitOrg/neogit",
        -- required 
        "https://github.com/nvim-lua/plenary.nvim",
        -- optional
        "https://github.com/sindrets/diffview.nvim"
    }
)

local neogit = require('neogit')
vim.keymap.set('n', '<leader>gg', neogit.open, { desc = 'Open Neogit UI' })
