vim.cmd.colorscheme("habamax")

vim.g.mapleader = " "

vim.opt.expandtab = true -- :h optionname   
vim.opt.fileencoding = "utf-8"
vim.opt.confirm = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.writebackup = false
vim.opt.history = 100
vim.opt.undofile = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.fillchars = { eob = " " }
vim.opt.shortmess = vim.tbl_deep_extend("force", vim.opt.shortmess:get(), { s = true, I = true })

