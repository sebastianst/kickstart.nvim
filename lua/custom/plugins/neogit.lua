return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
    keys = {
      { '<leader>gg', function() require('neogit').open() end, desc = '[G]it Neo[g]it' },
      { '<leader>gc', function() require('neogit').open { 'commit' } end, desc = '[G]it [C]ommit' },
      { '<leader>gl', function() require('neogit').open { 'log' } end, desc = '[G]it [L]og' },
      { '<leader>gp', function() require('neogit').open { 'push' } end, desc = '[G]it [P]ush' },
    },
    opts = {
      integrations = {
        telescope = true,
        diffview = true,
      },
    },
  },
  {
    'sindrets/diffview.nvim',
    cmd = { 'DiffviewOpen', 'DiffviewFileHistory' },
    keys = {
      { '<leader>gd', '<cmd>DiffviewOpen<CR>', desc = '[G]it [D]iffview' },
      { '<leader>gf', '<cmd>DiffviewFileHistory %<CR>', desc = '[G]it [F]ile history' },
    },
    opts = {},
  },
}
