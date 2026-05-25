vim.filetype.add({
  extension = {
    c3 = "c3",
    c3i = "c3",
  },
})

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        c3_lsp = {
          cmd = { "c3lsp" },
          filetypes = { "c3", "c3i" },

          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern("project.json", "c3lsp.json", ".git")(fname)
          end,
        },
      },
    },
  },
}
