return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
					},
				},
			},
		})
		telescope.load_extension("fzf")

		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<leader>pb", builtin.buffers, { desc = "Buffers" })
		vim.keymap.set("n", "<leader>k", builtin.keymaps, { desc = "Keymaps" })
		vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Git files" })
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end, { desc = "Grep string" })
	end,
}
