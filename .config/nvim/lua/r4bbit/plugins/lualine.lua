return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		local lualine_gruvbox_dark = require("lualine.themes.gruvbox_dark")
		-- local lualine_gruvbox_light = require("lualine.themes.gruvbox_light")

		lualine.setup({
			options = {
				theme = lualine_gruvbox_dark, -- figure out how to change this with keymap
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
