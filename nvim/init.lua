-------------------------------------------- ENTRY POINT -------------------------------------------

-- global user data
vim.g.user = vim.empty_dict()

-- setting keymap leader before lazy.nvim setup
vim.g.mapleader = ' '
vim.g.localmapleader = ' '

require 'user.diagnostic'

-- bootstrap lazy.nvim plugin manager
local data_path = vim.fn.stdpath 'data'
local lazy_path = data_path .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazy_path) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim',
    '--branch=stable',
    lazy_path,
  }
end
vim.opt.runtimepath:prepend(lazy_path)
require('lazy').setup('plugins', {
  lockfile = data_path .. '/lazy-lock.json',
  -- CHECK: does this work & detect local plugin repos?
  dev = { path = '~/neovim_plugins', patterns = { 'dasupradyumna' }, fallback = true },
  install = { colorscheme = { 'retrobox' } },
  ui = { size = { width = 0.999, height = 0.95 }, border = 'rounded' },
})
