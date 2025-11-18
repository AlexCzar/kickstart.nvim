return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        transparent_background = true,
        background = {
          dark = 'mocha',
          light = 'latte',
        },
        float = {
          transparent = true,
          solid = false,
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
