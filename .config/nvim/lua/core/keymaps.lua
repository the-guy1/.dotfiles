vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tas
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.shiftround = true
vim.expandtab = true

vim.keymap.set('n' , '<leader>h', 'nohlsearch<CR>')

-- relitive line number
vim.wo.relativenumber = true

-- press jk to exit insert mode
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })
