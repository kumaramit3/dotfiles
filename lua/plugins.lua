local status, packer = pcall(require,'packer')
if (not status) then
  print ("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'glepnir/lspsaga.nvim'

  --telescope 
  use {
    'nvim-telescope/telescope.nvim', tag='0.1.0',
    requires = {{'nvim-lua/plenary.nvim'}}
  }

  --treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-ts-autotag'
  --themes
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim'}
  }  
  --zen mode
  use 'folke/zen-mode.nvim'

  --completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-cmdline'
  use {'akinsho/bufferline.nvim', tag="v3.*"}

  --luasnip
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  --nvim-autopairs
  use 'windwp/nvim-autopairs'
  --lualine
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'

  --gtisigns  
  use 'lewis6991/gitsigns.nvim'
end

)
