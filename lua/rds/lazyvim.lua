require("rds.options")
require("rds.keymaps")
require("rds.autocmds")

-- Load Lazy and plugins.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- stable version
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("rds.plugins")