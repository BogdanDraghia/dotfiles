local vimopt = vim.opt


-- Map <leader> to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

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

-- KeyBindings

local function map(m, k, v)
   vim.keymap.set(m, k, v, { silent = true })
end

map('n', '<leader>fb', '<CMD>Telescope file_browser<CR>')
map('n', '<S-Up>','<CMD>m-2<CR>')
map('n', '<S-Down>','<CMD>m+<CR>')
map('i', '<S-Up>','<CMD>m-2<CR>')
map('i', '<S-Down>','<CMD>m+<CR>')

local o   = vim.o

vim.api.nvim_create_autocmd('TextYankPost', {
    group = num_au,
    callback = function()
        vim.highlight.on_yank({ higroup = 'Visual', timeout = 120 })
    end,
})

o.splitright = true
o.splitbelow = true

o.number = true
o.numberwidth = 2
o.signcolumn = 'yes'
o.cursorline = true
o.scrolloff = 8
-- Better editing experience
o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'
