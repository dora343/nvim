return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.cmd.colorscheme("kanagawa")
        local theme = require("kanagawa.colors").setup().theme

        local kanagawa = {}

        kanagawa.normal = {
            a = { bg = theme.syn.fun, fg = theme.ui.bg_m3 },
            b = { bg = theme.diff.change, fg = theme.syn.fun },
            c = { bg = theme.ui.bg_p1, fg = theme.ui.fg },
        }

        kanagawa.insert = {
            a = { bg = theme.diag.ok, fg = theme.ui.bg },
            b = { bg = theme.ui.bg, fg = theme.diag.ok },
        }

        kanagawa.command = {
            a = { bg = theme.syn.operator, fg = theme.ui.bg },
            b = { bg = theme.ui.bg, fg = theme.syn.operator },
        }

        kanagawa.visual = {
            a = { bg = theme.syn.keyword, fg = theme.ui.bg },
            b = { bg = theme.ui.bg, fg = theme.syn.keyword },
        }

        kanagawa.replace = {
            a = { bg = theme.syn.constant, fg = theme.ui.bg },
            b = { bg = theme.ui.bg, fg = theme.syn.constant },
        }

        kanagawa.inactive = {
            a = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            b = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim, gui = "bold" },
            c = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        }

        if vim.g.kanagawa_lualine_bold then
            for _, mode in pairs(kanagawa) do
                mode.a.gui = "bold"
            end
        end

        local colors = {
            black = theme.ui.bg,
            cream = theme.ui.fg,
            grey = theme.ui.bg_m3,
            yellow = theme.ui.fg_dim,
        }
        -- configure lualine with modified theme
        local lualine = require("lualine")
        lualine.setup({
            options = {
                theme = kanagawa,
                component_separators = { left = "│", right = "│" },
                section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_a = {
                    "mode",
                },
                lualine_b = {
                    "branch",
                    "diff",
                    "diagnostics",
                },
                lualine_c = {
                    {
                        "filename",
                        file_status = true,
                        path = 3,
                        shorting_target = 0,
                    },
                },
                lualine_x = {},
                lualine_y = {
                    "searchcount",
                    "selectioncount",
                    "encoding",
                    "filetype",
                },
                lualine_z = {
                    "progress",
                    "location",
                },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {
                lualine_a = {
                    {
                        "buffers",
                        buffers_color = {
                            active = { bg = colors.yellow, fg = colors.black, gui = "bold" },
                            inactive = { bg = colors.grey, fg = colors.cream, gui = "italic" },
                        },
                        symbols = {
                            modified = " ●",
                            alternate_file = "",
                            directory = "",
                        },
                        mode = 2,
                    }
                },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            winbar = {},
            inactive_winbar = {},
            extensions = {
                "lazy",
                "fugitive",
                "quickfix",
                "oil",
                "mason",
            },
        })
    end,
}
