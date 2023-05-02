vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Theme
	use 'EdenEast/nightfox.nvim'

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
end)
