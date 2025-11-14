vim.pack.add {
  'gh:vim-pandoc/vim-pandoc-syntax',
  'gh:vim-pandoc/vim-pandoc',
}

local markdown = vim.api.nvim_create_augroup('markdown', { clear = true })
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
  pattern = { '*.md' },
  group = markdown,
  callback = function()
    vim.o.filetype = 'pandoc'
    vim.o.syntax = 'markdown'
  end,
})
