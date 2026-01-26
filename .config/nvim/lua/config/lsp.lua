vim.pack.add {
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = "https://github.com/Saghen/blink.cmp" },
    { src = "https://github.com/j-hui/fidget.nvim" },
}

local lsp = {
    'lua_ls', 'zls', 'asm_lsp', 'nim_lsp', 'clangd', 'pyright', "tsserver", "c3_lsp", "rust_analyzer"
}

vim.lsp.enable(lsp)

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client then
            if client:supports_method('textDocument/completion') then
                vim.opt.completeopt = {
                    'menu', 'menuone', 'noinsert', 'fuzzy', 'popup'
                }
                vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
            end
        end
    end
})

vim.diagnostic.config({
    virtual_lines = {
        current_line = true,
    }
})

-- autocomplete stuff

require('blink-cmp').setup({
    fuzzy = { implementation = 'prefer_rust' },
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
