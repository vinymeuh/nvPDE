return {
  "numToStr/Comment.nvim",
  event = false,
  config = function()
    require("Comment").setup({
      mappings = {
        basic = false,
        extra = false,
      },
    })
  end,
  keys = {
    { "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Comment" },
    { "<leader>/", "<Plug>(comment_toggle_linewise_visual)",  desc = "Comment", mode = "v" },
  }
}
