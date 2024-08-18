

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Quit and save
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>pq", ":qa<CR>", { desc = "Quit all" })
vim.keymap.set("n", "<leader><CR>", ":w<CR>", { desc = "Save" })

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
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without yanking" })

vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Yank to clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Yank line to clipboard" })

vim.keymap.set("n", "x", "\"_x", { desc = "Delete without yanking" })

vim.keymap.set("n", "Q", "<Nop>")
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, { desc = "Format" })

-- Plugins remaps
-- Telescope
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = "Buffers" })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Git files" })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "Grep string" })

-- NvimTree
vim.keymap.set('n', '<leader>e', ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })
