local map = function(key, func)
  local opts = { expr = true, silent = true }
  vim.keymap.set('i', key, func, opts)
end

return {
  'Exafunction/codeium.vim',
  cmd = 'Codeium',
  build = ':Codeium Auth',
  event = 'BufEnter',
  config = function()
    vim.g.codeium_disable_bindings = 1
    map('<M-l>', function()
      return vim.fn['codeium#Accept']()
    end)
    map('<M-.>', function()
      return vim.fn['codeium#CycleCompletions'](1)
    end)
    map('<M-,>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end)
    map('<M-/>', function()
      return vim.fn['codeium#Clear']()
    end)
  end,
}
