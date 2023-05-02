-- Libraries
require("libs.utils")
-- Plugins
require('plugins')
-- Options
vim.opt.termguicolors = true
vim.opt.showtabline = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Theme
vim.cmd [[colorscheme carbonfox]]

--  Feline
require('feline').setup()

-- Nerdtree Configurations
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
})
nmap("<Leader>``", ":NvimTreeToggle<CR>")
nmap("<Leader>`c", ":NvimTreeCollapse<CR>")

-- COC
require('coc')
