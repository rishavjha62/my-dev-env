--for bar theme at the bottom

-- return {
-- 	"nvim-lualine/lualine.nvim",
-- 	config = function()
-- 		require("lualine").setup({
-- 			options = {
--         icons_enabled = true,
-- 				theme = "horizon",
-- 			},
-- 		})
-- 	end,
-- }

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")
		lualine.setup({
			options = {
				icons_enabled = true,
				theme = "horizon",
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
