return {
  'nvim-lualine/lualine.nvim',

  config = function()
    require("lualine").setup {
      options = {
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        ignore_focus = { "NvimTree" },
      },
      sections = {
        lualine_a = {
          { "mode" },
        },
        lualine_b = {
          { "filename", path = 1, symbols = { modified = " 󱇧 ", readonly = " 󰈡 ", unnamed = "[No Name]" } },
        },
        lualine_c = {
          { "grapple" },
        },
        lualine_x = {
          { "diagnostics" },
          { "encoding" },
          { "fileformat", symbols = { unix = '', dos = '', mac = '' } },
          { "filetype" },
        },
        lualine_y = {
          { "branch" },
        },
        lualine_z = {
          { "location", padding = { left = 0, right = 1 } },
        },
      },
      extensions = {},
    }
  end
}
