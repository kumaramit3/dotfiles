local status, packer = pcall(require,'packer')
if (not status) then
  print ("Packer is not installed")
  return end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  --telescope 
  use {
    'nvim-telescope/telescope.nvim', tag='0.1.3',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  --treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-ts-autotag'
  --themes
  use 'tanvirtin/monokai.nvim'
  use ({ "projekt0n/github-nvim-theme", tag = 'v0.0.7'})
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim'}
  }  
  use 'craftzdog/solarized-osaka.nvim'

  --zen mode
  use 'folke/zen-mode.nvim'

  --lspPlugins
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-cmdline'

  --bufferline
  use 'akinsho/bufferline.nvim'

  --luasnip
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  --nvim-autopairs
  use 'windwp/nvim-autopairs'

  --lualine
  use 'nvim-lualine/lualine.nvim'
  -- use 'kyazdani42/nvim-web-devicons'

  --comment 
  use 'numToStr/Comment.nvim'

  --git  
  use 'lewis6991/gitsigns.nvim'

  --dashboard
  use {
    "nvimdev/dashboard-nvim",
    requires = {'nvim-tree/nvim-web-devicons'}
  }
end

)
