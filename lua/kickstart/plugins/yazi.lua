return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  dependencies = {
    -- check the installation instructions at
    -- https://github.com/folke/snacks.nvim
    'folke/snacks.nvim',
  },
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      '<leader>n',
      '<cmd>Yazi<cr>',
      desc = 'Open yazi at the current file',
    },
    {
      -- Open in the current working directory
      '<leader>cw',
      '<cmd>Yazi cwd<cr>',
      desc = "Open the file manager in nvim's working directory",
    },
    {
      -- NOTE: this requires a version of yazi that includes
      -- https://github.com/sxyazi/yazi/pull/1305 from 2024-07-18
      '<c-up>',
      '<cmd>Yazi toggle<cr>',
      desc = 'Resume the last yazi session',
    },
  },
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = true,
    keymaps = {
      show_help = '<f1>',
    },
  },
}
