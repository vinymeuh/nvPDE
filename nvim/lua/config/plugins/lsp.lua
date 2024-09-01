return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup {
        ui = {
          border = "rounded",
        },
      }
    end,
    keys = {
      { "<leader>im", "<cmd>Mason<cr>", desc = "Mason" },
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      ensure_installed = {
        "jsonls",
        "lua_ls",
        "yamlls",
        -- "zls", -- stuck in 0.13, I'm a bleeding edge guy :)
      },
    },
  },
  {
    "b0o/schemastore.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      servers = {
        "gopls",
        "jsonls",
        "lua_ls",
        "templ",
        "yamlls",
        "zls",
      }
    },
    config = function(_, opts)
      require("lspconfig.ui.windows").default_options.border = "rounded"

      local icons = require("config.icons")
      vim.diagnostic.config({
        signs = {
          active = true,
          values = {
            { name = "DiagnosticSignError", text = icons.diagnostics.Error },
            { name = "DiagnosticSignWarn",  text = icons.diagnostics.Warning },
            { name = "DiagnosticSignHint",  text = icons.diagnostics.Hint },
            { name = "DiagnosticSignInfo",  text = icons.diagnostics.Information },
          },
        },
        virtual_text = false,
        underline = true,
        severity_sort = true,
        float = {
          focusable = true,
          style = "minimal",
          border = "rounded",
          header = "",
          prefix = "",
        },
      })
      for _, sign in ipairs(vim.tbl_get(vim.diagnostic.config(), "signs", "values") or {}) do
        vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = sign.name })
      end

      local on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true }
        local keymap = vim.api.nvim_buf_set_keymap
        keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
        keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
        keymap(bufnr, "n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
        keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
        keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

        if client.supports_method "text/Document/inlayHint" then
          vim.lsp.inlay_hint.enable(true, { nufnr = bufnr })
        end
      end

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      for _, server in pairs(opts.servers) do
        local config = {
          capabilities = capabilities,
          on_attach = on_attach,
        }
        local require_ok, server_config = pcall(require, "config.lspsettings." .. server)
        if require_ok then
          config = vim.tbl_deep_extend("force", server_config, config)
        end
        lspconfig[server].setup(config)
      end
    end,
    keys = {
      { "<leader>il", "<cmd>LspInfo<CR>", desc = "LSP" },
    },
  },
}
