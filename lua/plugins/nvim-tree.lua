return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        vim.g.loaded = 1
        vim.g.loaded_netrwPlugin = 1
        local nvimtree = require("nvim-tree")
        nvimtree.setup({
        
        })
    end

}
