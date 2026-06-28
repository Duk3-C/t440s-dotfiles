return { 
  "Mofiqul/dracula.nvim", 
  priority = 1000,
  name = "dracula",
  lazy = false,
  config = function()
    vim.cmd.colorscheme "dracula"
  end
}


