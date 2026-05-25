vim.filetype.add({
  extension = {
    c3 = "c3",
    c3i = "c3",
  },
})

return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.lsp.config("c3_lsp", {
        cmd = { "c3lsp" },
        filetypes = { "c3", "c3i" },
        root_markers = {
          "project.json",
          "c3lsp.json",
          ".git",
        },
        single_file_support = true,
      })
      vim.lsp.enable("c3_lsp")
    end,
  },
}
