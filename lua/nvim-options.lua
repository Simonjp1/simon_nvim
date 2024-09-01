vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.conceallevel = 2

-- Define a custom highlight group for yanking
vim.cmd([[highlight YankHighlight guibg=#ffcc00 guifg=#000000]])
-- Use the custom highlight group for yank
vim.api.nvim_exec(
	[[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="YankHighlight", timeout=200}
  augroup end
]],
	false
)

-- Set leader key to space
vim.g.mapleader = " "

-- Map leader + q to :q
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })

-- Map leader + w to :w
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

-- Mapping for indenting selected lines and reselecting them after indenting
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })

-- Enable relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.clipboard = "unnamedplus"

vim.o.signcolumn = "yes:1"
