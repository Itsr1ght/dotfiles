vim.pack.add({
    "https://github.com/stevearc/oil.nvim",
})

require("oil").setup({
    columns = {
        "icon",
        "size",
        "mtime",
    },
    view_options = {
        show_hidden = true,
        natural_order = "fast",
        preview_win = {
            update_on_cursor_moved = true,
            preview_method = "load",
        }
    }
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
