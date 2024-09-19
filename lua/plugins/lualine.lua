return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		{
			"letieu/harpoon-lualine",
			dependencies = {
				{
					"ThePrimeagen/harpoon",
					branch = "harpoon2",
				},
			},
		},
		"AndreM222/copilot-lualine",
		"yavorski/lualine-macro-recording.nvim",
	},
	config = function()
		local colors = {
			-- StatusLine background color.
			color0 = "#303030",

			-- Mode colors.
			color1 = "#80a0ff",
			color2 = "#36c692",
			color3 = "#ae81ff",
			color4 = "#e3c78a",
			color5 = "#ff5189",

			-- Mode text color.
			color6 = "#1c1c1c",

			-- StatusLineNC foreground.
			color7 = "#9e9e9e",

			-- Normal text color.
			color8 = "#c6c6c6",
		}

		-- LuaFormatter on
		local moonfly = {
			normal = {
				a = { fg = colors.color6, bg = colors.color1 },
				b = { fg = colors.color1, bg = colors.color0 },
				c = { fg = colors.color8, bg = colors.color0 },
			},
			insert = {
				a = { fg = colors.color6, bg = colors.color2 },
				b = { fg = colors.color2, bg = colors.color0 },
			},
			visual = {
				a = { fg = colors.color6, bg = colors.color3 },
				b = { fg = colors.color3, bg = colors.color0 },
			},
			command = {
				a = { fg = colors.color6, bg = colors.color4 },
				b = { fg = colors.color4, bg = colors.color0 },
			},
			replace = {
				a = { fg = colors.color6, bg = colors.color5 },
				b = { fg = colors.color5, bg = colors.color0 },
			},
			inactive = {
				a = { fg = colors.color7, bg = colors.color0 },
				b = { fg = colors.color7, bg = colors.color0 },
				c = { fg = colors.color7, bg = colors.color0 },
			},
		}
		if vim.g.kanagawa_lualine_bold then
			for _, mode in pairs(moonfly) do
				mode.a.gui = "bold"
			end
		end

		-- configure lualine with modified theme
		local lualine = require("lualine")
		lualine.setup({
			options = {
				theme = moonfly,
				globalstatus = true,
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
				lualine_x = {
					{ "macro_recording", "%S" },
					"copilot",
				},
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
				-- lualine_a = {
				-- 	"harpoon2",
				-- },
				-- lualine_b = {
				-- 	{
				-- 		"buffers",
				-- 		icons_enabled = false,
				-- 		buffers_color = {
				-- 			active = { bg = colors.yellow, fg = colors.black, gui = "bold" },
				-- 			inactive = { bg = colors.grey, fg = colors.cream, gui = "italic" },
				-- 		},
				-- 		symbols = {
				-- 			modified = " ●",
				-- 			alternate_file = "",
				-- 			directory = "",
				-- 		},
				-- 		mode = 2,
				-- 		max_length = vim.o.columns * 4 / 5,
				-- 	},
				-- },
				-- lualine_c = {},
				-- lualine_x = {},
				-- lualine_y = {},
				-- lualine_z = {},
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
