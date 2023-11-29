vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'EdenEast/nightfox.nvim'
  use 'ayu-theme/ayu-vim'

  -- Appearance
  use 'nanozuki/tabby.nvim'
  use 'freddiehaddad/feline.nvim'

  -- NVIM Tree
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- COC
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- Utities
  use 'tpope/vim-commentary'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Snippets
  -- use 'epilande/vim-react-snippets'
  use 'SirVer/ultisnips'
end)
