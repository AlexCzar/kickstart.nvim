-- Back/Forward for buffer navigation
vim.keymap.set('n', '<D-Left>', ':bprev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<D-Right>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('i', '<D-Left>', ':bprev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('i', '<D-Right>', ':bnext<CR>', { desc = 'Next buffer' })

