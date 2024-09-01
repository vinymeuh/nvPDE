return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'bicep',
        'c',
        'csv',
        'dockerfile',
        'gitignore',
        'go', 'gomod', 'gosum',
        'html',
        'json', 'json5', 'jsonc',
        'lua',
        'make',
        'markdown', 'markdown_inline',
        'powershell',
        'python',
        'query',
        'sql',
        'templ',
        'toml',
        'vim', 'vimdoc',
        'yaml',
        'zig',
      },
      auto_install = false,
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true, },
    }
  end,
  keys = {
    { "<leader>it", "<cmd>TSInstallInfo<CR>", desc = "Treesitter" },
  },
}
