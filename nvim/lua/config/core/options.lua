--- leader ---------------------------------------------------------------------
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--- Options --------------------------------------------------------------------
-- see https://neovim.io/doc/user/quickref.html#option-list
vim.opt.backup = false              -- keep backup file after overwriting a file
vim.opt.clipboard = "unnamedplus"   -- allows neovim to access the system clipboard
vim.opt.cursorline = true           -- highlight the current line
vim.opt.cmdheight = 1               -- number of lines to use for the command-line
vim.opt.guicursor = "n-v-c-i:block" -- always use fat cursor
vim.opt.hlsearch = true             -- highlight matches with last search pattern
vim.opt.ignorecase = false          -- ignore case in search patterns
vim.opt.incsearch = true            -- highlight match while typing search pattern
vim.opt.laststatus = 3              -- tells when last window has status lines
vim.opt.list = true                 -- show some invisible characters
vim.opt.listchars = {
  eol = "⤶",
}
vim.opt.number = true         -- print the line number in front of each line
vim.opt.relativenumber = true -- show relative line number in front of each line
vim.opt.ruler = true          -- show cursor line and column in the status line
vim.opt.scrolloff = 8         -- minimum nr. of lines above and below cursor
vim.opt.showtabline = 1       -- tells when the tab pages line is displayed
vim.opt.signcolumn = "yes"    -- when and how to display the sign column
vim.opt.smartindent = true    -- smart autoindenting for C programs
vim.opt.splitbelow = true     -- new window from split is below the current one
vim.opt.splitright = true     -- new window from vsplit is put right of the current one
vim.opt.swapfile = false      -- whether to use a swapfile for a buffer
vim.opt.termguicolors = true  -- set term gui colors (most terminals support this)
vim.opt.title = false         -- let Vim set the title of the window
vim.opt.timeoutlen = 500      -- time in milliseconds to wait for a mapped sequence to complete (useful for which-key too)
vim.opt.visualbell = true     -- use visual bell instead of beeping
vim.opt.wrap = false          -- long line long lines wrap and continue on the next line

vim.g.netrw_banner = 0

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

--- Spaces/Tab war -------------------------------------------------------------
vim.opt.expandtab = true -- use spaces when <Tab> is inserted
vim.opt.shiftwidth = 2   -- number of spaces to use for (auto)indent step
vim.opt.softtabstop = 2  -- number of spaces that <Tab> uses while editing
vim.opt.tabstop = 2      -- number of spaces that <Tab> in file uses


--- User commands --------------------------------------------------------------
vim.api.nvim_create_user_command('BackgroundToggle',
  function()
    local bg = vim.o.background
    if bg == "dark" then
      vim.o.background = "light"
    elseif bg == "light" then
      vim.o.background = "dark"
    else
      error("Unexpected vim.o.background value")
    end
  end,
  { nargs = 0, bang = true, desc = "Toggle Background" }
)
