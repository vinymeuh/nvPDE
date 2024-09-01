return {
  "cbochs/grapple.nvim",
  dependencies = {
    { "nvim-tree/nvim-web-devicons", lazy = true }
  },
  -- opts = {},
  config = function()
    require("grapple").setup({})
    -- don't pollute whichkey with select commands
    vim.keymap.set('n', 'g1', '<cmd>Grapple select index=1<cr>', { desc = 'Grapple 1' })
    vim.keymap.set('n', 'g2', '<cmd>Grapple select index=2<cr>', { desc = 'Grapple 2' })
    vim.keymap.set('n', 'g3', '<cmd>Grapple select index=3<cr>', { desc = 'Grapple 3' })
    vim.keymap.set('n', 'g4', '<cmd>Grapple select index=4<cr>', { desc = 'Grapple 4' })
  end,
  event = { "BufReadPost", "BufNewFile" },
  keys = {
    { "<leader>g",  "<cmd>Grapple toggle<cr>",      desc = "Grapple" },
    { "<leader>fg", "<cmd>Grapple toggle_tags<cr>", desc = "Grapples " },
  }
}
