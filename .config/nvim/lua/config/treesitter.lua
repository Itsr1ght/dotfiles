vim.pack.add(
    {"https://github.com/nvim-treesitter/nvim-treesitter"}
)


require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
    sync_install = true,
    auto_install = true,
    ignore_install = {},
    highlight = {
        enable = true,
    },
    modules = {},
    indent = {
        enable = true,
    },
}
