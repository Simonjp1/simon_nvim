return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,  -- Enables transparency for catppuccin theme
            })
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                transparent_mode = true,  -- Enables transparency for gruvbox theme
            })
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                disable_background = true,  -- Enables transparency for rose-pine theme
            })
        end,
    },
    {
        "neanias/everforest-nvim",
        name = "everforest",
        priority = 1000,
        config = function()
            vim.g.everforest_background = 'soft'
            vim.g.everforest_transparent_background = 1  -- Enables transparency for everforest theme
        end,
    },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.cyberdream_transparent_background = true  -- Enables transparency for cyberdream theme
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                transparent = true,  -- Enables transparency for tokyonight theme
            })
        end,
    },
}
