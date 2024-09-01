return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- Optional dependencies can be added here
    },
    opts = {
      workspaces = {
        {
          name = "Cyber",
          path = "~/vaults/Cyber",
        },
        {
          name = "Skola",
          path = "~/vaults/Skola",
        },
      },
      -- ui = { enable = false },
    },
  },
  {
    -- pretty markdown
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = false,
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
  },
  {
    -- markdown preview
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    keys = {},
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" }
  },
}
