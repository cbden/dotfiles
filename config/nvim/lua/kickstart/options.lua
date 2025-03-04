vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true
opt.mouse = 'a'
opt.showmode = false
opt.breakindent = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = 'yes'
opt.updatetime = 250
opt.timeoutlen = 500
opt.splitright = true
opt.splitbelow = true
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.inccommand = 'split'
opt.cursorline = true
opt.scrolloff = 10

opt.swapfile = false
opt.undofile = true
opt.backup = false

vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)
