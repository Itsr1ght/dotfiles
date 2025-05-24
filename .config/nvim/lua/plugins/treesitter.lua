-- Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlight = {
		enable = true
	    },
	    indent = {
		enable = true
	    },
	    sync_install = true,
	    auto_install = true,
	    ensure_installed = { "lua", "python" },
	})
    end
}
