-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'jakewvincent/mkdnflow.nvim',
    config = function()
      require('mkdnflow').setup {
        -- Config goes here; leave blank for defaults
        to_do = {
          symbols = { ' ', '-', 'x' },
          update_parents = true,
          not_started = ' ',
          in_progress = '-',
          complete = 'x',
        },
      }
    end,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', '<C-h>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-,>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-.>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-/>', function()
        harpoon:list():select(4)
      end)
      local harpoon_extensions = require 'harpoon.extensions'
      harpoon:extend(harpoon_extensions.builtins.highlight_current_file())
      local ts = require('telescope.config').values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require('telescope.pickers')
          .new({}, {
            prompt_title = 'Harpoon',
            finder = require('telescope.finders').new_table {
              results = file_paths,
            },
            previewer = ts.file_previewer {},
            sorter = ts.generic_sorter {},
          })
          :find()
      end
      vim.keymap.set('n', '<C-i>', function()
        toggle_telescope(harpoon:list())
      end, { desc = 'Open harpoon window' })
    end,
  },
}
