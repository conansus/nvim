vim.g.mapleader = " "
vim.g.maplocalleader = "//"
vim.g.miniindentscope_disable = false
vim.g.indentblankline_disable = false
vim.g.context = false

vim.opt.backspace = vim.list_extend(vim.opt.backspace:get(), { "nostop" })
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 0
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.confirm = true
vim.opt.copyindent = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.colorcolumn = "80"
vim.opt.diffopt = vim.list_extend(vim.opt.diffopt:get(), { "algorithm:histogram", "linematch:60" })
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.fillchars = { eob = " " }
vim.opt.foldcolumn = "auto"
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.history = 100
vim.opt.ignorecase = true
vim.opt.infercase = true
vim.opt.laststatus = 3
vim.opt.linebreak = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣", eol = " " }
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.numberwidth = 1
vim.opt.preserveindent = true
vim.opt.pumheight = 10
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.shortmess = vim.tbl_deep_extend("force", vim.opt.shortmess:get(), { s = true, I = true })
vim.opt.signcolumn = "auto"
vim.opt.smartcase = true
vim.opt.smoothscroll = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.timeoutlen = 200
vim.opt.title = true
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.virtualedit = "block"
vim.opt.wrap = false
vim.opt.writebackup = false

vim.opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
-- vim.opt.foldcolumn = "1"
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

local git_dir = vim.fn.finddir('.git', vim.fn.getcwd() .. ";")
vim.g.gitdir = git_dir ~= ""

vim.fn.sign_define("DiagnosticSignError", {
  text = "●", texthl = "DiagnosticSignError"
})
vim.fn.sign_define("DiagnosticSignWarn", {
  text = "●", texthl = "DiagnosticSignWarn"
})
vim.fn.sign_define("DiagnosticSignInfo", {
  text = "●", texthl = "DiagnosticSignInfo"
})
vim.fn.sign_define("DiagnosticSignHint", {
  text = "●", texthl = "DiagnosticSignHint"
})
