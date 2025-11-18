return {
  {
    'augmentcode/augment.vim',
    config = function()
      vim.g.augment_disable_tab_mapping = 'v:true'
      vim.keymap.set('i', '<M-l>', '<cmd>call augment#Accept()<cr>', { desc = 'Accept Augment suggestion' })
    end,
  },
}
