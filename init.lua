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
vim.opt.number = true
vim.opt.colorcolumn = "80"
-- Theme
-- vim.cmd [[colorscheme carbonfox]]
vim.g.ayucolor = "dark"
vim.cmd [[colorscheme ayu]]

--  Feline
require('feline').setup()

-- Nerdtree Configurations
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    side = "right",
    width = 40,
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

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>/f', builtin.find_files, {})
vim.keymap.set('n', '<leader>/g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>/b', builtin.buffers, {})
vim.keymap.set('n', '<leader>/h', builtin.help_tags, {})
