-- lazy.nvim
return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		lsp = {
			-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
			},
		},
		-- you can enable a preset for easier configuration
		presets = {
			bottom_search = true, -- use a classic bottom cmdline for search
			command_palette = true, -- position the cmdline and popupmenu together
			long_message_to_split = true, -- long messages will be sent to a split
			inc_rename = false, -- enables an input dialog for inc-rename.nvim
			lsp_doc_border = false, -- add a border to hover docs and signature help
		},
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		{
			-- "rcarriga/nvim-notify",
			"dora343/nvim-notify",
			opts = {
				level = 2,
				timeout = 7000,
				top_down = false,
				render = "default",
				max_width = vim.o.columns / 2,
				stages = "slide",
			},
			-- config = function()
			-- 	local stages_util = require("notify.stages.util")
			--
			-- 	local custom_stage = {
			-- 		function(state)
			-- 			local next_height = state.message.height + 2
			-- 			local next_row =
			-- 				stages_util.available_slot(state.open_windows, next_height, stages_util.DIRECTION.BOTTOM_UP)
			-- 			local windows = state.open_windows
			-- 			local w = windows[1]
			--
			-- 			local padding = 0
			-- 			local check = false
			--
			-- 			local exists, conf = require("notify.util").get_win_config(w)
			-- 			if not exists then
			-- 				check = true
			-- 			end
			-- 			if exists and conf.row < vim.opt.lines:get() - 10 then
			-- 				check = true
			-- 			end
			--
			-- 			if check then
			-- 				-- padding = 3
			-- 			end
			--
			-- 			if not next_row then
			-- 				return nil
			-- 			end
			-- 			return {
			-- 				relative = "editor",
			-- 				anchor = "NE",
			-- 				width = state.message.width,
			-- 				height = state.message.height,
			-- 				col = vim.opt.columns:get(),
			-- 				row = next_row - padding,
			-- 				border = "rounded",
			-- 				style = "minimal",
			-- 			}
			-- 		end,
			-- 		function()
			-- 			return {
			-- 				col = vim.opt.columns:get(),
			-- 				time = true,
			-- 			}
			-- 		end,
			-- 	}
			--
			-- 	require("notify").setup({
			-- 		level = 2,
			-- 		fps = 120,
			-- 		-- stages = custom_stage,
			-- 		stages = "slide",
			-- 		timeout = 7000,
			-- 		top_down = false,
			-- 		render = "default",
			-- 		max_width = vim.o.columns / 2,
			-- 	})
			-- end,
		},
	},
}
