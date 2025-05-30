return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()
            require("toggleterm").setup {
                shade_terminals = false
            }
        end,
        keys = {
            {
                "<leader>/",
                ":ToggleTerm<cr>",
                desc = "Toggle The Terminal with /"
            }
        },
    }
}
