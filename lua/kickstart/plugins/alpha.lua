return {
  'goolord/alpha-nvim',
  dependencies = {
    'echasnovski/mini.icons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    --   dashboard.section.header.val = {
    --      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⠀⡀⢀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
    --      [[ ⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣽⠃⠀⠀⠀⢼⠻⣿⣿⣟⣿⣿⣿⣿⣶⣶⣶⣶⣤⣤⣤⣤⣤ ]],
    --      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠛⡶⢶⢺⠁⠀⠈⢿⣿⣿⣿⣿⣿⣿⣏⣿⣿⣿⣿⣿⣿⣿ ]],
    --      [[ ⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⣤⠀⣀⣠⡛⣣⡀⠀⠈⢿⣿⣿⣻⣏⣿⣿⣿⣿⣿⣿⣟⣿⠿ ]],
    --      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⣳⣶⣿⣿⣷⣾⠱⠀⠀⠊⢿⠿⠿⢛⣽⣿⡿⢿⣿⣟⠿⠿⠿ ]],
    --      [[ ⠉⠉⠉⠛⠛⠛⠋⠛⠛⠛⣧⠀⡀⠀⠀⢿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠅⢀⢀⡀ ]],
    --      [[ ⠔⠄⢀⡀⠀⠀⠀⠄⠐⠸⠿⡀⠀⠀⠀⢘⣿⢷⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠰⣠⣇ ]],
    --      [[ ⣷⣆⣴⣮⢻⡲⡲⠀⠁⠀⠀⠀⠀⠀⠀⠹⡿⠘⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣀⡘⢷⣏ ]],
    --      [[ ⣿⣿⣿⣗⠿⢈⠁⡀⠀⠁⠀⠀⠀⠀⠀⠀⠉⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢀⠄⠀⠄⠈⢿⣮⢿ ]],
    --      [[ ⣿⣟⡿⣾⠀⠀⠀⠀⠀⠀⠀⢀⡤⠄⠀⠀⠀⠀⠸⠁⢠⣦⣤⢀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠈⣿⠀ ]],
    --      [[ ⣿⣿⠏⠁⢀⡇⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠘⡏⣷⣵⡻⠃⠄⢴⣆⠀⠀⠀⠀⠀⠀⠀⠰⠀⣆⣷⣿ ]],
    --      [[ ⣿⡿⣻⠗⠀⢠⠀⠀⠀⠀⠀⠃⠀⠀⠀⠀⢠⣤⣄⢰⣶⢯⣤⡈⠋⠀⠀⠀⠀⠀⠀⠀⠀⠆⠀⣿⣼ ]],
    --    }
    --

    dashboard.section.header.val = {
      ' ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
      ' ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
      ' ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
      ' ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
      ' ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
      ' ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
      'by teh way.',
      '',
      '',
      ''
      '',
      [[  ⣿⣿⣿⣿⣿⣿⡿⢃⣾⣿⣿⣿⣿⣿⣿⣿⡿⢃⡄⢸⡜⣿⣿⣿⣿⣿⠃⣿⣧⢸⣷⣤⣌⡙⢿⣿⣯⣧⠀⠄⢻⣿⣿⣿⣿⣿⣿  ]],
      [[  ⣿⣿⣿⣿⣿⡿⢁⣾⡟⣼⣿⣿⣿⢿⡿⢋⣴⣿⣃⢸⣧⠹⣿⣿⣿⣿⠀⣻⡏⢸⣿⣿⣿⣷⡄⢻⣿⡍⠣⠈⡀⢹⣿⣿⣿⣿⣿  ]],
      [[  ⣿⣿⣿⣿⣿⢃⣿⣿⣴⣿⣿⣿⠋⣤⣶⣿⣿⣿⣿⣆⠻⣿⣿⣿⠿⣿⠀⠃⠁⣼⣿⣿⣿⣿⣿⡄⢹⣧⠀⠁⠀⠀⢿⣿⣿⣿⣿  ]],
      [[  ⣿⣿⣿⣿⠏⣼⣿⣿⣿⢿⣿⢃⣼⣿⣿⣿⣿⣿⣿⣿⣷⣌⡛⠿⠀⠆⠀⣠⣾⣿⡿⠿⠿⠛⢛⣂⡀⠈⢷⡄⠀⠀⠈⣿⣿⣿⣿  ]],
      [[  ⣿⣿⣿⡿⠀⡟⣿⡿⡏⢸⡇⣼⡿⠿⠿⠋⢛⣙⣿⣿⣿⣿⣿⣿⣶⣾⣬⠹⣿⣿⣿⣿⠀⠀⢀⣿⠄⠀⠈⠹⣦⡀⠀⣿⣿⣿⣿  ]],
      [[  ⣿⣿⣿⣧⠀⡇⣿⡇⠀⡌⠀⣿⣿⣿⠀⠀⢠⣿⣿⣿⡿⠛⣋⣭⣥⣤⣤⣤⣤⣙⠻⣿⣧⣦⣿⣿⣶⠟⠀⠀⢹⡇⠀⣿⣿⣿⣿  ]],
      [[  ⣿⣿⣿⡿⢁⠠⠘⢰⣀⣿⣴⣿⣿⣿⣷⣶⣿⣿⣿⣿⣀⠘⠿⠿⠿⠿⠿⠿⠛⢛⣡⣶⣭⣭⣬⣭⣭⣄⣴⣷⠸⠃⣸⣿⣿⣿⣿  ]],
      [[  ⣿⣿⡟⢠⣿⣷⣧⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⡀⡉⢿⣿⣿⣿  ]],
      [[  ⣿⡟⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⡇⣿⡄⢻⣿⣿  ]],
      [[  ⡟⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⢸⣿⡄⢿⣿  ]],
      [[  ⠃⣾⣿⣿⣿⣿⣿⣿⠟⣩⣴⣾⣿⣿⣿⣿⠿⠛⣋⣥⣶⡇⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠘⣿⣿⡈⣿  ]],
      [[  ⠀⣿⣿⣿⣿⣿⣿⠏⣐⣛⠛⠛⢛⣋⣭⣤⣶⣿⣿⣿⡿⠃⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣇⢸  ]],
      [[  ⠀⢿⣿⣿⣿⣿⡏⣼⣿⢡⢠⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⠀  ]],
      [[  ⣧⠘⣿⣿⣿⡟⣠⣿⣿⠘⠘⣿⣿⣿⣿⣿⣿⣿⠟⢁⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⠀  ]],
      [[  ⣿⣧⠻⣿⣿⢃⣿⣿⣿⣷⣤⠌⢛⣛⣛⣛⣫⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⠻⣿⣿⠀  ]],
      [[  ⣿⣿⣇⣙⡁⢬⣭⣩⣭⣥⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢁⣿⣦⣙⣃⣰  ]],
    }

    dashboard.section.buttons.val = {
      -- dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button('b', '  > Browse files', ':Oil --float<CR>'),
      dashboard.button('z', '  > Browse Directories', ':Telescope zoxide list<CR>'),
      dashboard.button('f', '󰈞  > Find file', ':Telescope find_files<CR>'),
      dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
    }

    alpha.setup(dashboard.opts)
  end,
}
