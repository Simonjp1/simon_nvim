return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local function footer()
      local total_plugins = require('lazy').stats().loaded
      local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
      local version = vim.version()
      local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

      return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
    end

    local akatsuki_cloud = {
        "                             @@@@@@@@@@              ",
        "                           @@@@@@@@@@@@@@            ",
        "                     @@@  @@@@@@@@@@@@@@@            ",
        "                  @@@@@@  @@@@@@@@ @@@@@@@@@@@@      ",
        "                 @@@@@@@  @@@@@@@@ @@@@@@@@@@@@@@    ",
        "                @@@@@@@@@  @@@@@@  @@@@@@@@@@@@@@@   ",
        "                @@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@  ",
        "              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ",
        "          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@ ",
        "        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@ ",
        "   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@  ",
        "    @@@@@@@@@@@@     @@@@@@@@@@@@@@@@  @@@@@@@@@@@   ",
        "     @@@@@@@@@ @@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@    ",
        "      @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@       ",
        "         @@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@            ",
        "               @@@@@@@@@@@@@@@@@@@@@@@@@             ",
        "                 @@@@@@@@     @@@@@@@@               ",
    }

    dashboard.section.header.val = akatsuki_cloud
    -- change akatsuki logo to red. (does not work with gruvbox)
    -- dashboard.section.header.opts.hl = "Error"

    dashboard.section.buttons.val = {
      dashboard.button("<Leader>e", "  File Explorer"),
      dashboard.button("<C-p>", "  Find File"),
      dashboard.button("<Leader>fg", "  Find Word"),
    }

    dashboard.section.footer.val = footer()
    dashboard.section.footer.opts.hl = "Normal" 

    alpha.setup(dashboard.opts)
  end,
}
