return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd",
          "zls",
          "rust_analyzer",
          "pyright",
          "ts_ls",
        },
        automatic_enable = true,
      })
    end
  },
}
