------------------------------------------ NVIM-TREESITTER -----------------------------------------

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',  -- update treesitter parsers along with the plugin
  config = function()
    require('nvim-treesitter.configs').setup {
      auto_install = false,
      -- parser options
      ensure_installed = {
        'bash',
        'c',
        'cmake',
        'cpp',
        'cuda',
        'json',
        'lua',
        'make',
        'markdown',
        'markdown_inline',
        'python',
        'query',
        'rust',
        'toml',
        'vim',
        'vimdoc',
        'xml',
        'yaml',
      },
      -- module options
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<CR>',
          node_incremental = '<Tab>',
          node_decremental = '<S-Tab>',
          scope_incremental = '<CR>',
        },
      },
    }
  end,
}
