return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			numhl = false,
			linehl = false,
			word_diff = false,
			attach_to_untracked = true,
		})
		vim.keymap.set("n", "<leader>sp", function()
			local gs = require("gitsigns")
			gs.toggle_deleted()
			gs.toggle_linehl()
			gs.toggle_numhl()
			gs.toggle_word_diff()
		end, { desc = "Toggle Gitsigns highlight" })
		vim.keymap.set(
			"n",
			"<leader>sb",
			"<cmd>Gitsigns toggle_current_line_blame<CR>",
			{ desc = "Toggle Gitsigns Line Blame" }
		)
	end,
}
