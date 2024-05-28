local status, ts = pcall(require, 'nvim-treesitter')
if (not status) then return end

require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.install'.compilers = {'clang','gcc'}

require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable=true,
    disable={},
  },
  indent = {
    enable=true,
    disable={},
  },
  ensure_installed = {
     'cpp',
    'javascript',
    'typescript',
    'tsx',
    'lua',
    'json',
    'yaml',
    'html',
    'css',
    'markdown',
  },
  autotag = {
    enable=true
  },
}

--local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
--parser_config.tsx.filetype_to_parsername = {'javascript','typescript.tsx'}

