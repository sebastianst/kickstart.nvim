return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  opts = {},
  keys = {
    { '<leader>Sl', function() require('persistence').load() end, desc = '[S]ession [L]oad (cwd)' },
    { '<leader>SL', function() require('persistence').load { last = true } end, desc = '[S]ession Load [L]ast' },
    { '<leader>Ss', function() require('persistence').save() end, desc = '[S]ession [S]ave' },
    { '<leader>Sd', function() require('persistence').stop() end, desc = '[S]ession [D]ont save on exit' },
    { '<leader>Sf', function() require('persistence').select() end, desc = '[S]ession [F]ind' },
  },
}
