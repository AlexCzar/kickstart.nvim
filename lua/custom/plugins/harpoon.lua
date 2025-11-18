return {
   {
      'ThePrimeagen/harpoon',
      branch = 'harpoon2',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
         local harpoon = require 'harpoon'
         harpoon:setup()
         vim.keymap.set('n', 'C-a', function()
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
