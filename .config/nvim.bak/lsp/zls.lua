return {
    cmd = {"zls", "--log-file", "/tmp/zls_log.txt"},
    filetypes = {"zig", "zon"},
    root_markers = {'build.zig', 'build.zig.zon', ".git"},
    settings = {
        enable_inlay_hints = true,
        inlay_hints_show_variable_type_hints = true,
        inlay_hints_show_parameter_name_hints = true,
        inlay_hints_hide_redundant_param_names = true,
        enable_build_on_save = false,
    },

    on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({
              bufnr = bufnr,
              async = false,
            })
          end,
        })
    end,
}
