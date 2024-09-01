return {
  'folke/trouble.nvim',
  opts = {
    open_no_results = true,
  },
  keys = {
    { "<leader>td", "<cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics panel", },
  },
}
