require 'core.options'
require 'core.keymaps'
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--single-branch",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
require 'plugins.neotree',
require 'plugins.theme',
require 'plugins.telescope',
require 'plugins.lsp',
require 'plugins.autocompletion'
})
