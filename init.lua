-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.cleaninstall")
vim.g.python3_host_prog = vim.fn.expand("~/.venvs/nvim/bin/python")
vim.g.perl_host_prog = vim.fn.expand("~/bin/perl-nvim")
