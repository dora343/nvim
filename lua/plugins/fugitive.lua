return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
        vim.keymap.set("n", "gf", ":diffget //2<CR>", { desc = "Git resolve conflict: Left" })
        vim.keymap.set("n", "gj", ":diffget //3<CR>", { desc = "Git resolve conflict: Right" })
        vim.keymap.set("n", "<leader>gpush", ":Git push<CR>", { desc = "Git push" })
	end
}
