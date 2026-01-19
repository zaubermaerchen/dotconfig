local opt = vim.opt

opt.fileencoding = "utf-8"
opt.backup = false
opt.swapfile = false
opt.autoread = true
opt.hidden = true
opt.number = true
opt.cursorline = true
opt.virtualedit = "onemore"
opt.smartindent = true
opt.showmatch = true
opt.laststatus = 2
opt.wildmode = "list:longest"
opt.tabstop = 4
opt.shiftwidth = 4
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.wrapscan = true
opt.hlsearch = true

vim.cmd("syntax enable")
vim.cmd("colorscheme iceberg")
