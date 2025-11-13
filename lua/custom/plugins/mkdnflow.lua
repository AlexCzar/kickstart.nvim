vim.pack.add  { 'gh:jakewvincent/mkdnflow.nvim'}
require('mkdnflow').setup {
  mappings = {
    MkdnNewListItem = { 'i', '<CR>' }, -- smart Enter in lists
  },
  path_resolution = {
    root_marker = '.jj',
    primary = 'root',
  },
  to_do = {
    statuses = {
      not_started = { marker = ' ' },
      in_progress = { marker = '-' },
      complete = { marker = 'x' },
    },
  },
  new_file_template = {
    use_template = true,
    placeholders = {
      date = function()
        return os.date '%Y-%m-%d'
      end,
    },
    template = [[
---
title: {{ title }}
created: {{ date }}
tags: [journal, pure]
---

# {{ title }}

### Tasks

- [ ] 
]],
  },
}
