local indent  = 2

vim.o.wrap = false -- Wrap text lineDelete all strings in Vim with delete button
vim.o.mouse = 'a' -- Enable mouse action for all mode
vim.o.number = true -- Print line number
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8','iso-2022-jp','euc-jp','sjis'
vim.o.fileformats = 'unix','dos','mac'
vim.o.wildmenu = true -- Command line completion in extended mode
vim.o.hlsearch = true -- Highlight all matching text
vim.o.incsearch = true -- Make search behave like modern browsers
vim.o.wrapscan = true -- Search again from the beginning of the file
vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.smartcase = true -- Don't ignore case with capitals
vim.o.clipboard = 'unnamedplus' -- Set those yanks in my os clipboards
vim.o.laststatus = 2 -- Display status line under window everytime
vim.o.smarttab = true -- Insert (or Delete) spaces by 'shiftwidth', 'softtabstop', 'tabstop'
vim.o.backspace = 'indent,eol,start' -- Delete all strings in Vim with delete button
vim.o.tabstop = indent -- Number of spaces tabs count for
vim.o.shiftwidth = indent -- Size of an indent
vim.o.softtabstop = indent
vim.o.showtabline = indent
vim.o.cursorline = true -- Display the current line
vim.o.ignorecase = true -- Don't distinguish between upper and lower case letters when searching
vim.o.smartindent = true -- Insert indents automatically
vim.o.virtualedit = 'block'
vim.o.termguicolors = true
vim.o.shell = '/bin/zsh'

vim.g.noswapfile = true -- Don't create swapfile when open the new buffer
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand('~/.vim/undo')
