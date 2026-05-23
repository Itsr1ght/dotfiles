return {
    cmd = { "c3lsp", "-diagnostics-delay=300", "-stdlib-path=/usr/lib/c3c/lib/"},
    filetypes = { "c3", "c3i", "c3t" },
    root_markers = { ".git", "project.json" },
    single_file_support = true,

    settings = {
        c3 = {
            diagnostics = {
                enable = true,
            },
        },
    },
}
