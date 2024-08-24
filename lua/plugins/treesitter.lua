return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require('nvim-ts-autotag').setup({
    --   aliases = {
    --     ["your language here"] = "html",
    -- }
    })
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "javascript", "html"},
      highlight = { enable = true },
      indent = { enable = true }
  })
  end
}
