local home = os.getenv 'HOME'
require('conform').setup {
   formatters_by_ft = {
      lua = { 'stylua_rocks' },
   },
   formatters = {
      stylua_rocks = {
         command = 'stylua',
         args = {
            '--indent-type',
            'Spaces',
            '--indent-width',
            '3',
            '--stdin-filepath',
            '$FILENAME',
            '-',
         },
      },
   },
}
return {}
