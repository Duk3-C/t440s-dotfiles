return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    otps = {
      ensure_installed = { "lua", "c", "html", "javascript", "python", "cpp", "rust", "zig" },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
