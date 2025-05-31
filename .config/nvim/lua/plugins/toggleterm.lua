return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()
            require("toggleterm").setup {
                shade_terminals = false,
                on_open = function(term)
                    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<c-/>", "exit<CR>", { noremap = true, silent = true })
                end,
            }
        end,
        keys = {
            {
                "<C-/>",
                ":ToggleTerm<cr>",
                desc = "Toggle The Terminal with /"
            }
        },
    }
}
