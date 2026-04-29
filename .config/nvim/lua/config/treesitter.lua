vim.pack.add {
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        branch = "main",
    },
}

vim.cmd("packadd nvim-treesitter")

require('nvim-treesitter').setup({
    highlight = { enable = true },
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    if vim.treesitter.language.add(ft) then
      vim.treesitter.start(args.buf, ft)
    end
  end,
})
