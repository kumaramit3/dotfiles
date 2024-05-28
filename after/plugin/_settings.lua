
vim.opt.number=true
vim.opt.relativenumber = true
vim.opt.expandtab=true
vim.opt.sw=2 vim.opt.ts=4
vim.opt.mouse='a' vim.opt.signcolumn='yes' vim.opt.wrap=false vim.opt.shell='fish'
vim.opt.ignorecase=true

vim.opt.background = 'dark'
vim.opt.cursorline = true
vim.opt.syntax = enable
vim.opt.termguicolors=true

local opts = {noremap=true,silent=true}
local keymap = vim.keymap
local leader = '\\'

keymap.set('i', '<C-s>', '<esc>:w<CR>',opts)
keymap.set('n', '<C-s>', '<esc>:w<CR>',opts)
keymap.set('n','<space>f', ':normal gg=G<cr>', opts)
keymap.set('t', '<esc>', '<C-\\><C-n>', opts)
keymap.set('n','<leader>m', ':cd ~/.config/nvim<CR>',opts)

keymap.set('n','te',':tabedit')
-- keymap.set('n','<Tab>', ':+tabnext<CR>')
-- keymap.set('n','<Shift>', ':-tabnext<CR>')

keymap.set('n','ss', ':split<Return><C-w>w')
keymap.set('n','sv', ':vsplit<Return><C-w>w')

keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')


vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]

vim.cmd("colorscheme solarized-osaka")
