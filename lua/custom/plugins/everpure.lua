-- Everpure is a local colorscheme in colors/everpure.lua
if vim.v.servername == '' then
  pcall(vim.fn.serverstart)
end

local kitty_theme = vim.fn.resolve(vim.fn.expand '~/.config/kitty/kitty.d/theme.conf')
if kitty_theme:match 'everpure%-light%.conf$' then
  vim.o.background = 'light'
elseif kitty_theme:match 'everpure%-dark%.conf$' then
  vim.o.background = 'dark'
end

vim.cmd.colorscheme 'everpure'
