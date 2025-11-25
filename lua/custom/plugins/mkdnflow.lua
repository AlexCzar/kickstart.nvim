return {
   {
      'jakewvincent/mkdnflow.nvim',
      config = function()
         require('mkdnflow').setup {
            mappings = {
               MkdnNewListItem = { 'i', '<CR>' }, -- smart Enter in lists
            },
            perspective = {
               root_tell = '.jj',
               priority = 'root',
            },
            to_do = {
               symbols = { ' ', '-', 'x' },
               update_parents = true,
               not_started = ' ',
               in_progress = '-',
               complete = 'x',
            },
            new_file_template = {
               use_template = true,
               placeholders = {
                  before = {
                     date = function()
                        return os.date '%Y-%m-%d'
                     end,
                  },
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
      end,
   },
}
