return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require("toggleterm").setup {
      size = 20,           -- Default size for terminals
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = '1',
      start_in_insert = true,
      insert_mappings = true,           -- Allow mappings in insert mode
      terminal_mappings = true,
      persist_size = true,
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = 'curved',
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        }
      },
    }

    -- Mappings for different terminal directions in both normal and insert modes using Shift + Function Keys
    vim.api.nvim_set_keymap("n", "<M-1>", "<cmd>ToggleTerm direction=horizontal<cr>", {})
    vim.api.nvim_set_keymap("t", "<M-1>", "<Esc><cmd>ToggleTerm direction=horizontal<cr>", {})
    vim.api.nvim_set_keymap("n", "<M-2>", "<cmd>ToggleTerm direction=vertical<cr>", {})
    vim.api.nvim_set_keymap("t", "<M-2>", "<Esc><cmd>ToggleTerm direction=vertical<cr>", {})
    vim.api.nvim_set_keymap("n", "<M-3>", "<cmd>ToggleTerm direction=float<cr>", {})
    vim.api.nvim_set_keymap("t", "<M-3>", "<Esc><cmd>ToggleTerm direction=float<cr>", {})
  end
}
