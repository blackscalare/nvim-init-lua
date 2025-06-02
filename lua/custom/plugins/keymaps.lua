return {
	vim.keymap.set("n", "<leader>sl", function()
		require("persistence").load()
	end, { desc = "Restore Session" }),
	-- Keybind to open init.lua
	vim.keymap.set(
		"n",
		--"<C-c>",
		"<leader>cc",
		"<cmd>tabnew ~/.config/nvim/init.lua<CR>",
		{ desc = "Open init.lua in a new tab" }
	),
	-- Find project keymap
	vim.keymap.set("n", "<leader>fp", "<cmd>Telescope projects<CR>", { desc = "Find Projects" }),
	vim.keymap.set("n", "<leader>gg", function()
		require("lazy.util").float_term({ "lazygit" }, {
			cwd = vim.fn.getcwd(),
		})
	end, { desc = "Open LazyGit in float" }),
}
