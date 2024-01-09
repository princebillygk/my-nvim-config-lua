vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- /*********/
  -- /* Theme */
  -- /*********/
  use 'EdenEast/nightfox.nvim'
  use 'ayu-theme/ayu-vim'

  -- /**************/
  -- /* Appearance */
  -- /**************/
  use 'nanozuki/tabby.nvim'
  use 'freddiehaddad/feline.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- /*******/
  -- /* COC */
  -- /*******/
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- /***********/
  -- /* Utities */
  -- /***********/
  -- Emmet
  use 'mattn/emmet-vim'
  vim.g.user_emmet_settings = {
    ['javascript'] = {
      ['extends'] = 'jsx',
      ['default_attributes'] = {
        ['label'] = { ['htmlFor'] = ' ' },
        ['class'] = { ['className'] = ' ' },
      },
    },
  }

  -- Comment
  use 'tpope/vim-commentary'

  use {
    'nvim-pack/nvim-spectre',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use "sindrets/diffview.nvim"
  use "lewis6991/gitsigns.nvim"
  use {
    'kkoomen/vim-doge',
    run = ':call doge#install()'
  }

  use 'tpope/vim-fugitive'
end)
