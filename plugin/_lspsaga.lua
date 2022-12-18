local keymap = vim.keymap.set
local saga = require('lspsaga')
local opts = { noremap = true, silent = true }

saga.init_lsp_saga()

keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)

keymap('n', '<C-k>', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)

keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)

keymap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)

keymap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)

keymap('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)

keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

--keymap('n', 'gn', '<Cmd>Lspsaga open_floaterm<CR>', opts )
