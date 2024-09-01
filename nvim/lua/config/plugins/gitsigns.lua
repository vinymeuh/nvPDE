return {
  "lewis6991/gitsigns.nvim",
  lazy = false,
  opts = {
    signcolumn = true,
    current_line_blame = true,
  },
  keys = {
    { "<leader>tg", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Git Blame (on/off)", },
  },
}
