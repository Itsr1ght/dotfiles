return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        rust_analyzer = {},
        zls = {
          setup = {
            zls = function(_, opts)
              local zig_tools_opts = require("lazyvim.util").opts("zig-tools.nvim")
              require("zig-tools").setup(vim.tbl_deep_extend("force", zig_tools_opts or {}, { server = opts }))
              return true
            end,
          },
        },
        jdtls = {},
        v_analyser = {},
        neocmake = {},
        jsonls = {
          on_new_config = function(new_config)
            new_config.settings.json.schemas = new_config.settings.json.schemas or {}
            vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
          end,
          settings = {
            json = {
              format = {
                enable = true,
              },
              validate = { enable = true },
            },
          },
        },
      },
      setup = {
        jdtls = function()
          return true
        end,
      },
    },
  },
  { "cmake-tools.nvim" },
}
