return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({})
  end,
  keys = {
    { "<leader>te", "<cmd>NvimTreeToggle<CR>", desc = "Explorer panel" }
  },
}
