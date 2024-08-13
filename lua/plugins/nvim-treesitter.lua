local Parsers = {
	"bash",
	"c",
	"cmake",
	"comment",
	"cpp",
	"css",
	"csv",
	"cuda",
	"dart",
	"diff",
	"dockerfile",
	"lua",
	"vim",
	"vimdoc",
	"javascript",
	"html",
	"go",
	"gomod",
	"gosum",
	"java",
	"jq",
	"json",
	"make",
	"python",
	"typescript",
	"verilog",
	"xml",
	"yaml",
	"rust",
}

local M = {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	config = function () 
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = Parsers,
			sync_install = false,
			highlight = { enable = true, additional_vim_regex_highlighting = false, },
			indent = { enable = true },  
		})
	end
}

return { M }
