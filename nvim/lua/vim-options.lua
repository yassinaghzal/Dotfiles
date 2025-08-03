vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("nnoremap <F5> :w<CR>:!gcc % -o %:r && ./%:r<CR>")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
