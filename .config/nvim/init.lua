-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
    vim.o.guifont = "JetBrains Mono:h18"
end
