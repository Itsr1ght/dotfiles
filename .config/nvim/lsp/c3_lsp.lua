return {
    cmd = {"c3lsp"},
    filetypes = {"c3", "c3i"},
    root_markers = {".git", "project.json"},
    settings = {},
    single_file_support = true,

    vim.filetype.add({
      extension = {
        c3 = "c3",
        c3i = "c3",
        c3t = "c3",
      },
    })
}
