vim.pack.add {
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = "https://github.com/Saghen/blink.cmp" },
    { src = "https://github.com/j-hui/fidget.nvim" },
}

local lsp = {
    'lua_ls', 'zls', 'asm_lsp', 'nim_lsp', 'clangd', 'pyright', "tsserver", "c3_lsp", "rust_analyzer"
}

vim.lsp.enable(lsp)

vim.diagnostic.config({
    virtual_lines = {
        current_line = true,
    }
})


-- autocomplete stuff

local blink = require("blink.cmp")
blink.setup({
    fuzzy = { implementation = 'prefer_rust' },
    signature = {enabled = false},
    completion = {
        accept = {
            auto_brackets = { enabled = true },
        },
        list = {
            selection = { preselet = true, auto_insert = true },
        },
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
        ghost_text = { enabled = true, show_with_menu = true },
    }
})

-- Fidget config

require("fidget").setup({
    windows = {
        border = "rounded",
    }
})


-- lsp bindings

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', "<leader>h", vim.lsp.buf.hover)

-- for ADA file fix
vim.api.nvim_create_autocmd("FileType", {
    pattern = "ada",
    callback = function()
        vim.keymap.del("i", "<Space>aj", { buffer = true })
        vim.keymap.del("i", "<Space>al", { buffer = true })
    end,
})

