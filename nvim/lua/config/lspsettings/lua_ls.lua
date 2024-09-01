return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      runtime = {
        version = "LuaJIT",
        special = {
          lazyadd = "require",
        },
      },
      hint = {
        enable = true,
      },
    }
  }
}
