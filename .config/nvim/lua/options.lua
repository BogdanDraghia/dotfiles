local vimopt = vim.opt

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vimopt.belloff = "all"
vimopt.number = true
vimopt.relativenumber = false
vimopt.termguicolors = true

-- 2 space intend
vim.opt.autoindent = true
vim.g.smartintend = true

-- control the number of space characters that will be inserted when the tab key is pressed
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

-- insert space characters whenever the tab key is pressed
vim.o.expandtab = true

vim.opt.shell = 'fish'

-- highlight
vim.opt.cursorline = true
