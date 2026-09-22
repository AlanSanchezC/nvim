return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Configure LSP for: Lua, JS, TS, Python, HTMX and Rust
      vim.lsp.config("*", { capabilities = capabilities })

      local langs = { "lua_ls", "ts_ls", "pyright", "htmx", "rust_analyzer" }
      vim.lsp.enable(langs)

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
