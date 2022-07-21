-- space
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.smartindent = true

-- appearance
vim.o.number = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true
vim.o.termguicolors = true
vim.g.tokyonight_style = "night"
vim.cmd("colorscheme tokyonight")

-- keymap
vim.keymap.set('n', ' t', ":NvimTreeToggle<CR>", {})
