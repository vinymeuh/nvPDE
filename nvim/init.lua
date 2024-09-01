-- ███    ██ ███████  ██████  ██    ██ ██ ███    ███
-- ████   ██ ██      ██    ██ ██    ██ ██ ████  ████
-- ██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██
-- ██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██
-- ██   ████ ███████  ██████    ████   ██ ██      ██

require "config.core.options"
require "config.core.keymaps"
require "config.core.autocmds"
-------------------------------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "config.plugins.autopairs" },
    { import = "config.plugins.cmp" },
    { import = "config.plugins.comment" },
    { import = "config.plugins.conform" },
    { import = "config.plugins.devicons" },
    { import = "config.plugins.gitsigns" },
    { import = "config.plugins.grapple" },
    { import = "config.plugins.gruvbox" },
    { import = "config.plugins.lualine" },
    { import = "config.plugins.lsp" },
    { import = "config.plugins.markview" },
    { import = "config.plugins.nvimtree" },
    { import = "config.plugins.oil" },
    { import = "config.plugins.outline" },
    { import = "config.plugins.telescope" },
    { import = "config.plugins.treesitter" },
    { import = "config.plugins.trouble" },
    { import = "config.plugins.whichkey" },
  },
  ui = {
    border = "rounded",
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
})
