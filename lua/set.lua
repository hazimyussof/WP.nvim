-- set line number and relative-line number
vim.opt.nu = true
vim.opt.relativenumber = true

-- set 4-space indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line-wrapping
vim.opt.wrap = false

-- rmeove vim backups and make undo-tree history longer
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- search terms '/'
vim.opt.hlsearch = true -- highlight search terms
vim.opt.incsearch = true -- increment search

-- good colors, just good colors...
vim.opt.termguicolors = true

-- scroll-view range
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- fast update time, be fast AF boi
vim.opt.updatetime = 50

-- leader key
vim.g.mapleader = " "
