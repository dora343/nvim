-- vim.keymap.set("n", "<C-S-A-c>", "<C-c>")
-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Quit and save
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>Q", ":qa<CR>", { desc = "Quit all" })
vim.keymap.set("n", "<leader>ww", "<cmd>w<CR>", { desc = "Save" })

-- Search and replace
vim.keymap.set("n", "<leader>sr", ":%s//g<Left><Left>", { desc = "Search & Replace" })

-- Move between buffers
vim.keymap.set("n", "<leader>h", "<cmd>bp<CR>", { desc = "Goto Previous buffer" })
vim.keymap.set("n", "<leader>l", "<cmd>bn<CR>", { desc = "Goto Next buffer" })

-- Move between windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "Y", "Vy")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- greatest keymap ever
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })

vim.keymap.set("n", "x", '"_x', { desc = "Delete without yanking" })

vim.keymap.set("n", "Q", "<Nop>")
vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end, { desc = "Format" })
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close buffer" })
