return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()
		vim.keymap.set("n", "<leader>H", function()
			harpoon:list():add()
			print("Added current file to harpoon")
		end, { desc = "Harpoon this file" })
		vim.keymap.set("n", "<leader>m", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon menu" })

		vim.keymap.set("n", "<M-h>", function()
			harpoon:list():select(1)
			print("Harpoon #1")
		end, { desc = "Harpoon select 1" })

		vim.keymap.set("n", "<M-j>", function()
			harpoon:list():select(2)
			print("Harpoon #2")
		end, { desc = "Harpoon select 2" })

		vim.keymap.set("n", "<M-k>", function()
			harpoon:list():select(3)
			print("Harpoon #3")
		end, { desc = "Harpoon select 3" })
		vim.keymap.set("n", "<M-l>", function()
			harpoon:list():select(4)
			print("Harpoon #4")
		end, { desc = "Harpoon select 4" })

		vim.keymap.set("n", "<leader><leader>", function()
			vim.notify("notify level test", "info")
			vim.notify("notify level test", "warn")
			vim.notify("notify level test", "error")
		end, { desc = "notification testing" })
	end,
}
