return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    local icons = require "config.icons"
    require("telescope").setup {
      defaults = {
        prompt_prefix = icons.ui.Telescope .. " ",
        selection_caret = icons.ui.Forward .. " ",
        entry_prefix = "   ",
        color_devicons = true,
      },
      pickers = {
        buffers = {
          theme = "dropdown",
          previewer = false,
        },
        colorscheme = {
          enable_preview = true,
        },
        find_files = {
          theme = "dropdown",
          previewer = false,
          -- path_display = filenameFirst
        },
        live_grep = {
          theme = "dropdown",
        },
      },
    }
  end,
  keys = {
    { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Buffers" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Files" },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>",    desc = "Keymaps" },
    { "<leader>ft", "<cmd>Telescope live_grep<cr>",  desc = "Text" },
  }
}
