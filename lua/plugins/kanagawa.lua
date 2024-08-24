return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	lazy = false,
	priority = 1000,
	config = function()
		vim.keymap.set("n", "<leader>dd", "<cmd>colorscheme kanagawa-dragon<cr>")
		vim.keymap.set("n", "<leader>dw", "<cmd>colorscheme kanagawa-wave<cr>")
	end,
}
