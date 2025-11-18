return {
   'vim-pandoc/vim-pandoc-syntax',
   dependencies = { 'vim-pandoc/vim-pandoc' },
   event = 'BufEnter *.md',
   config = function()
      local markdown = vim.api.nvim_create_augroup('markdown', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
         pattern = { '*.md' },
         group = markdown,
         callback = function()
            vim.o.filetype = 'pandoc'
            vim.o.syntax = 'markdown'
         end,
      })
   end,
}
