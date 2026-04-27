vim.pack.add {
    { src = "https://github.com/j-hui/fidget.nvim" },
    { src = "https://github.com/numToStr/Comment.nvim" },
}

local lsp = {
    'lua_ls', 'zls', 'asm_lsp', 'nim_lsp', 'clangd', 'pyright', "tsserver",
    "c3_lsp", "rust_analyzer", "v_analyzer", "nim_langserver", "jdtls",
    "kotlin_lsp", "ols", "gopls", "html_lsp", "serve_d",
}

vim.lsp.enable(lsp)

vim.diagnostic.config({
    virtual_lines = {
        current_line = true,
    }
})


vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    end
    if client and client:supports_method("textDocument/inlayHint") then
      vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
    end
  end,
})


-- Fidget config

require("fidget").setup({
    windows = {
        border = "rounded",
    }
})


-- lsp bindings

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, {desc = "Format the code"})
vim.keymap.set('n', "<leader>h", vim.lsp.buf.hover, {desc = "Display the detail about the hover code"})
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {desc = "Rename the variable and other across the file"})
vim.keymap.set("n", "<C-_>", function()
    require('Comment.api').toggle.linewise.current()
end, { noremap = true, silent = true , desc = "Comment the line"}
)
vim.keymap.set('v', '<C-_>', function()
    local api = require("Comment.api")
    local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)

    vim.api.nvim_feedkeys(esc, 'nx', false)
    api.toggle.linewise(vim.fn.visualmode())
end, { noremap = true, silent = true , desc = "Comment multiple line"}
)

-- for ADA file fix
vim.api.nvim_create_autocmd("FileType", {
    pattern = "ada",
    callback = function()
        vim.keymap.del("i", "<Space>aj", { buffer = true })
        vim.keymap.del("i", "<Space>al", { buffer = true })
    end,
})
