return {
    cmd = {'pyright-langserver', '--stdio'},
    filetypes = {'python'},
    root_markers = {'setup.py', 'pyproject.toml', 'setup.cfg', 'requirements.txt', '.git'},
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
            },
        },
    }
}
