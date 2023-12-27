return  {
	"nvim-telescope/telescope.nvim",
	tag="0.1.4",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>te", "<cmd>Telescope<CR>", {desc = "Open telescope"})
	end,
}
