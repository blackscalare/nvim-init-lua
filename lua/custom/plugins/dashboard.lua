-- plugins/dashboard.lua
return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				theme = "hyper",
				config = {
					week_header = {
						enable = true,
					},
					shortcut = {
						{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
						{
							icon = " ",
							icon_hl = "@variable",
							desc = "Files",
							group = "Label",
							action = "Telescope find_files",
							key = "f",
						},
						{
							desc = " Apps",
							group = "DiagnosticHint",
							action = "Telescope app",
							key = "a",
						},
						{
							desc = " dotfiles",
							group = "Number",
							action = "Telescope dotfiles",
							key = "d",
						},
					},
				},
				hide = {
					tabline = true,
				},
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
}
-- return {
-- 	"nvimdev/dashboard-nvim",
-- 	event = "VimEnter",
-- 	dependencies = {
-- 		"nvim-tree/nvim-web-devicons",
-- 		"nvim-telescope/telescope.nvim",
-- 		"nvim-telescope/telescope-project.nvim",
-- 		"folke/persistence.nvim", -- optional for session support
-- 	},
-- 	config = function()
-- 		-- Load required Telescope extensions
-- 		require("telescope").load_extension("project")
--
-- 		-- Setup session management
-- 		require("persistence").setup({
-- 			dir = vim.fn.stdpath("state") .. "/sessions/",
-- 			options = { "buffers", "curdir", "tabpages", "winsize" },
-- 		})
--
-- 		local dashboard = require("dashboard")
-- 		dashboard.setup({
-- 			theme = "doom",
-- 			config = {
-- 				header = {
-- 					[[⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⢰⣿⠿⠿⠛⠛⠛⠉⠉⠉⠁⠀⠈⠉⠉⠉⠛⠛⠛⠛⠛⠛⠛⠛⠿⠿⣿⣿⣿⣶⣦⡀⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⣿⣇⠀⢀⣀⣠⣤⣤⣤⣤⣤⣤⣄⣀⡀⠀⠀⠀⠀⢀⣀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣄⣹⣿⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⠘⣿⣿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠛⠛⠛⠛⠛⠋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⠀⠀⢀⣴⣶⣶⡆⠀⠤⠤⠤⠤⠤⠤⠤⠤⠤⠀⢰⣶⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⠀⠀⢸⣿⠟⠋⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠉⠻⠿⠿⠿⢿⣿⣷⣦⣄⣀⡀⠀⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⠀⠀⠈⠁⠀⢀⣴⣿⡿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⠀⠀⠀⢀⣾⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⠀⠀⣠⣿⣿⡏⠀⠀⣠⣤⣤⣶⣶⣶⣤⣤⣤⣄⠀⢻⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⢀⣾⣿⣿⠋⠀⠀⢸⣿⡇⠁⠀⠈⢹⣿⡇⠀⠉⠀⠘⣿⣿⣿⣿⣧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⠉⠉⠉⠁⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⠀⠀⢀⣤⣶⣶⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣶⣶⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠀⠀⢀⣠⣶⡿⠿⠿⠿⠛⠛⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
-- 					[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
-- 				},
--
-- 				center = {
-- 					{
-- 						icon = "󰈢  ",
-- 						desc = "Find Project",
-- 						key = "p",
-- 						action = "Telescope projects",
-- 					},
-- 					{
-- 						icon = "  ",
-- 						desc = "Find File",
-- 						key = "f",
-- 						action = "Telescope find_files",
-- 					},
-- 					{
-- 						icon = "  ",
-- 						desc = "Recent Files",
-- 						key = "r",
-- 						action = "Telescope oldfiles",
-- 					},
-- 					{
-- 						icon = "  ",
-- 						desc = "Bookmarks",
-- 						key = "b",
-- 						action = function()
-- 							local bookmarks = {
-- 								"~/AppData/Local/nvim/init.lua",
-- 								"~/Documents/notes/todo.md",
-- 								"~/Projects/my-awesome-project/main.lua",
-- 							}
-- 							vim.ui.select(bookmarks, { prompt = "Select Bookmark:" }, function(choice)
-- 								if choice then
-- 									vim.cmd("edit " .. choice)
-- 								end
-- 							end)
-- 						end,
-- 					},
-- 					{
-- 						icon = "  ",
-- 						desc = "Load Session",
-- 						key = "s",
-- 						action = function()
-- 							require("persistence").load()
-- 						end,
-- 					},
-- 					{
-- 						icon = "󰗼  ",
-- 						desc = "Quit Neovim",
-- 						key = "q",
-- 						action = "qa",
-- 					},
-- 				},
--
-- 				footer = function()
-- 					local stats = require("lazy").stats()
-- 					return {
-- 						"⚡ Loaded " .. stats.count .. " plugins in " .. math.floor(stats.startuptime) .. "ms",
-- 						"NeoVim — ✨ lmao ✨",
-- 					}
-- 				end,
-- 			},
-- 		})
-- 	end,
-- }
