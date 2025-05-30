return {
	vim.keymap.set("n", "<leader>sl", function()
		require("persistence").load()
	end, { desc = "Restore Session" }),
}
