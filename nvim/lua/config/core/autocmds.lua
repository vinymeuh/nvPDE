vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.setlocal("setlocal noet ts=4 sw=4 sts=4")
  end,
})
