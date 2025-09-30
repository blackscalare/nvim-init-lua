return {
	{
		"akinsho/toggleterm.nvim",
		config = function()
			local Terminal = require("toggleterm.terminal").Terminal

			local function run_cpp_program()
				local build_cmd = "make"
				local run_cmd = "./tower_defence"

				local term = Terminal:new({
					cmd = build_cmd .. " && " .. run_cmd,
					direction = "float", -- or "horizontal", or "vertical"
					close_on_exit = false,
					hidden = true,
				})
				term:toggle()
			end

			local function open_terminal(dir)
				local term = Terminal:new({
					direction = dir,
				})
				term:toggle(35)
			end

			vim.keymap.set("n", "<leader>rr", run_cpp_program, {
				desc = "Build and run C++ project",
				noremap = true,
				silent = true,
			})

			vim.keymap.set("n", "<leader>tt", function()
				open_terminal("horizontal")
			end, {
				desc = "Open vertical terminal",
				noremap = true,
				silent = true,
			})

			vim.keymap.set("n", "<leader>tf", function()
				open_terminal("float")
			end, {
				desc = "Open vertical terminal",
				noremap = true,
				silent = true,
			})
		end,
	},
}
