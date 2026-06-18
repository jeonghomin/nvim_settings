vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.relativenumber = false


require("config.lazy")
require("config.colors")
require("config.options")
require("config.keymaps")

