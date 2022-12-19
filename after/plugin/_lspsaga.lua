local status,saga = pcall(require,'lspsaga')
if (not status) then return end

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
local leader = '\\'

saga.init_lsp_saga()

keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)

keymap('n', '<C-k>', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)

keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)

keymap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)

keymap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)

keymap('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)

keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

