vim.g.mapleader = " "
-- set initial config from ./lua/config
require "config"
-- install lazyvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)
-- load lazyvim plugins from ./lua/plugins
require("lazy").setup "plugins"
