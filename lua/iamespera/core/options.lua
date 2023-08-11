local opt = vim.opt

-- vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Editor options
opt.ruler = true
opt.title = true
opt.syntax = "on"
opt.hidden = true

-- lines
vim.wo.number = true
opt.wrap = false
vim.opt.relativenumber = true

-- windows
opt.splitbelow = true -- force all vertical splits to go below the curent window
opt.splitright = true -- force all horizontal splits to go the right of the curent window

-- indentation
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true

-- disable mouse
opt.mouse = ""

-- search
opt.hlsearch = true

-- command
opt.showcmd = true
opt.cmdheight = 1

opt.shell = "zsh"

-- backup
opt.backup = false
opt.backupskip = { "/tmp/*", "/private/tmp/*" }
opt.inccommand = "split"

opt.ignorecase = true
opt.smartcase = true

-- miscelanious
opt.scrolloff = 10
opt.smarttab = true

-- cursor line
opt.cursorline = true

-- appeareance
opt.termguicolors = true
opt.background = "light"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

opt.iskeyword:append("-")

opt.updatetime = 50 -- increases vim speed
