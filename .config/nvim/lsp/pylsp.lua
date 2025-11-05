return {
    cmd = {'pylsp'},
    filetypes = {'python'},
    root_markers = {'setup.py', 'pyproject.toml', 'setup.cfg', 'requirements.txt', '.git'},
    settings = {
        pylsp = {
            plugins = {
                jedi_completion = { enabled = true },
                jedi_hover = { enabled = true },
                jedi_references = { enabled = true },
                jedi_signature_help = { enabled = true },
                jedi_symbols = { enabled = true },
                pyflakes = { enabled = true },
                pycodestyle = { enabled = true },
                mccabe = { enabled = true },
            }
        }
    }
}
