-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Load theme settings from toggle-theme.sh
pcall(dofile, vim.fn.stdpath("config") .. "/lua/config/theme.lua")
