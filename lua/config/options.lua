vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.mouse = "a"
vim.opt.laststatus = 3

-- 禁止自动注释续行
vim.opt.formatoptions:remove({ "c", "r", "o" })

vim.opt.cursorline = true 
vim.opt.cursorlineopt = "number" 

-- 使得左右键可以跨行
vim.o.whichwrap = vim.o.whichwrap .. "<>,h,l"
