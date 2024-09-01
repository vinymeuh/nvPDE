return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    icons = {
      mappings = false,
    },
    win = {
      border = "rounded",
    },
    spec = {
      { "<leader>c",  "<cmd>:bd<CR>",              desc = "Close buffer" },
      { "<leader>f",  "",                          desc = "Find" },
      { "<leader>i",  "",                          desc = "Info" },
      { "<leader>ih", "<cmd>checkhealth<CR>",      desc = "Healthcheck" },
      { "<leader>iz", "<cmd>Lazy<CR>",             desc = "Lazy" },
      { "<leader>t",  "",                          desc = "Toggle" },
      { "<leader>tm", "<cmd>BackgroundToggle<CR>", desc = "Background (dark/light)" },
    }
  }
}
