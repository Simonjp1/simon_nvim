return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
			},
			sections = {
				lualine_a = {
          "buffers",
				},
        lualine_b = {
          "branch",
        },
        lualine_c = {},
			},
		})
	end,
}
