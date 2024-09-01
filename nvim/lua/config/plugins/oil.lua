return {
  "stevearc/oil.nvim",

  config = function()
    require("oil").setup({
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
    })
  end,
  keys = {
    { "<leader>e", "<cmd>Oil<cr>", desc = "Explorer" },
  }
}
