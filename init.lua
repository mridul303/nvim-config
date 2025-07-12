-- Set leader before anything else
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load modular configs
require("config.wsl-clipboard")
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Finally load lazy.nvim
require("config.lazy")
