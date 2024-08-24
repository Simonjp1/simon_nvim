return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local quotes = {
      "“I'm not superstitious, but I am a little stitious.” – Michael Scott",
      "“I am Beyoncé, always.” – Michael Scott",
      "“Sometimes I'll start a sentence and I don't even know where it's going. I just hope I find it along the way.” – Michael Scott",
      "“Bears. Beets. Battlestar Galactica.” – Jim Halpert",
      "“Identity theft is not a joke, Jim! Millions of families suffer every year.” – Dwight Schrute",
      "“Whenever I'm about to do something, I think, 'Would an idiot do that?' And if they would, I do not do that thing.” – Dwight Schrute",
      "“I declare bankruptcy!” – Michael Scott",
      "“The worst thing about prison was the dementors.” – Prison Mike",
      "“I am faster than 80 percent of all snakes.” – Dwight Schrute",
      "“The Taliban is the worst. Great heroin though.” – Creed Bratton",
      "“If I can’t scuba, then what’s this all been about? What am I working toward?” – Creed Bratton",
      "“Would I rather be feared or loved? Easy. Both. I want people to be afraid of how much they love me.” – Michael Scott",
      "“I'm an early bird and a night owl. So I'm wise and I have worms.” – Michael Scott",
      "“Identity theft is not a joke, Jim! Millions of families suffer every year.” – Dwight Schrute",
    }

    -- Function to select a random quote
    local function random_quote()
      math.randomseed(os.time())
      return quotes[math.random(1, #quotes)]
    end

		vim.api.nvim_set_hl(0, "ItalicType", { link = "Type", italic = true })

    -- Custom section for the quote
    dashboard.section.quote = {
      type = "text",
      val = random_quote(),
      opts = {
        position = "center",
        hl = "ItalicType",
      },
    }

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
      dashboard.button("<Leader>e", "  File Explorer"),
      dashboard.button("<C-p>", "  Find File"),
      dashboard.button("<Leader>fg", "  Find Word"),
    }

    -- Footer section without any centering adjustments
    dashboard.section.footer.val = {
      os.date(" %d-%m-%Y   %H:%M:%S")
      .. "   "
      .. require("lazy").stats().loaded
      .. " plugins   v"
      .. vim.version().major
      .. "."
      .. vim.version().minor
      .. "."
      .. vim.version().patch,
    }
    dashboard.section.footer.opts = {
      position = "center",
      hl = "Normal",
    }

    -- Setup the dashboard with the custom sections
    alpha.setup({
      layout = {
        { type = "padding", val = 2 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        dashboard.section.buttons,
        { type = "padding", val = 0 },
        dashboard.section.footer,
        { type = "padding", val = 2 },
        dashboard.section.quote, -- Custom section for the quote
      },
      opts = {},
    })
  end,
}
