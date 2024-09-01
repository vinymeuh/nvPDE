vim.keymap.set("x", "p", [["_dP]])                   -- don't replace buffer after pasting
vim.keymap.set("n", "Q", "<Nop>", { silent = true }) -- disable mapping to execute last macro recorded
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')  -- clear highlights on search when pressing <Esc>

vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select all lines' })

--- Indent ---------------------------------------------------------------------
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right', noremap = true })
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left', noremap = true })

--- Windows --------------------------------------------------------------------
vim.keymap.set('n', '<C-s>', '<C-w><C-s>', { desc = 'Split window [-]' })
vim.keymap.set('n', '<C-v>', '<C-w><C-v>', { desc = 'Split window [|]' })
vim.keymap.set('n', '<C-c>', '<C-w><C-c>', { desc = 'Close current window' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-Right>', '<C-w><C-<>', { desc = 'Decrease width' })
vim.keymap.set('n', '<C-Left>', '<C-w><C->>', { desc = 'Increase width' })
vim.keymap.set('n', '<C-Up>', '<C-w><C-+>', { desc = 'Increase height' })
vim.keymap.set('n', '<C-Down>', '<C-w><C-->', { desc = 'Increase height' })
