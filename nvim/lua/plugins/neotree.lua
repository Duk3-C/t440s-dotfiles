return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", 
  },
  lazy = false,
  config = function()
    vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left<CR>', {})
    require('transparent').clear_prefix('NeoTree')
  end
}
