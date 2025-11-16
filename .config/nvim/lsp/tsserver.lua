return {
    cmd = {'typescript-language-server', '--stdio'},
    filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact" },
    root_markers = {"tsconfig.json", "package.json", "jsconfig.json", "deno.json",".git"},
    settings = {
        javascript = {
            format = {
                enable = true
            }
        },
        typescript = {
            format = {
                enable = true
            }
        }
    }
}
