return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"andrew-george/telescope-themes",
			"nvim-telescope/telescope-ui-select.nvim", -- Added ui-select here
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			local builtin = require("telescope.builtin")
			require("telescope").load_extension("themes")
			require("telescope").load_extension("ui-select")

			-- Key mappings
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
			vim.keymap.set("n", "<leader>th", ":Telescope themes<CR>", {})
		end,
	},
}
