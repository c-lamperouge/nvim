-- space
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.shiftwidth = 2

-- appearance
vim.o.number = true
vim.o.cursorline = true
vim.o.termguicolors = true
vim.cmd("colorscheme tokyonight")

-- keymap
vim.keymap.set('n', ' t', ":NvimTreeToggle<CR>", {})
