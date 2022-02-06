local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local packer = require 'packer'

-- Add packages
return packer.startup(function()
  use 'wbthomason/packer.nvim' -- packer can manage itself

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- tagviewer
  use 'liuchengxu/vista.vim'

  -- treesitter interface
  use 'nvim-treesitter/nvim-treesitter'

  -- colorschemes
  -- use 'tanvirtin/monokai.nvim'
  -- use { 'rose-pine/neovim', as = 'rose-pine' }
  use 'morhetz/gruvbox'
  use {
    'navarasu/onedark.nvim',
    config = function() require('onedark').load() end
  }

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  -- statusline
  use {
    'famiu/feline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function() require('plugins/feline').setup() end
  }

  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('plugins/gitsigns') end
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-lua/plenary.nvim'

  -- lsp-status
  use 'nvim-lua/lsp-status.nvim'  

  -- Comments
  use 'numToStr/Comment.nvim'

  -- Syntax Highlighting
  use 'sheerun/vim-polyglot'

  -- Ripgrep
  use 'jremmen/vim-ripgrep'

  -- Prettier
  use 'prettier/vim-prettier'

  -- Cursor Line
  use { 'yamatsum/nvim-cursorline', branch = 'main' }

  -- Hop / Jump
  use { 'ggandor/lightspeed.nvim', branch = 'main' }

  -- Fugitive, best git plugin
  use 'tpope/vim-fugitive'

  -- Bufferline
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('bufferline').setup() end
  }

end)
