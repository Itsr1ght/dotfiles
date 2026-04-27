return {
   cmd = {"rust-analyzer"},
   filetypes = { "rust" },
   root_markers = { "Cargo.toml", "rust-project.json", ".git" },
   settings = {
        ["rust-analyzer"] = {
            rustc = {
                source = "discover",
            },
            cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                buildScripts = {
                    enable = true,
                },
            },
            allFeatures = true,
            loadOutDirsFromCheck = true,
            buildScripts = {
                    enable = true,
            },
        },
   },
}
