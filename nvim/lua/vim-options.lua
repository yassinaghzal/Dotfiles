vim.cmd("set expandtab")

vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd("nnoremap <F5> :w<CR>:!gcc % -o %:r && ./%:r<CR>")
vim.keymap.set("n", "<F4>", ":w | :term javac  % && java %:r<CR>", { silent = true })
vim.cmd("set relativenumber")
vim.opt.swapfile = false
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.fileencoding = "utf-8"
vim.opt.showmode = false
vim.opt.writebackup = false
vim.opt.cursorline = true
-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set({'n', 'v'}, '<C-c>', '"+y', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, '<C-p>', '"+p', { noremap = true, silent = true })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>",{desc = "Remove search highlights"})

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
