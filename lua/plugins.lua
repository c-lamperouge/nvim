return require('packer').startup(function()
  -- icon
  use 'kyazdani42/nvim-web-devicons'
  -- color scheme
  use 'folke/tokyonight.nvim'
  -- tab bar
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  -- status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }
  -- file manager
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
  }

  -- tree-sitter
  use {
    'nvim-treesitter/nvim-treesitter',
  }
end)
