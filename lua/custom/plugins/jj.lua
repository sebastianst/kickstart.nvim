return {
  'NicolasGB/jj.nvim',
  dependencies = {
    'sindrets/diffview.nvim',
  },
  lazy = false,
  config = function()
    local jj = require 'jj'
    jj.setup {
      diff = {
        backend = 'diffview',
      },
      cmd = {
        bookmark = {
          prefix = 'seb/',
        },
      },
    }

    local cmd = require 'jj.cmd'
    local diff = require 'jj.diff'

    -- Core commands
    vim.keymap.set('n', '<leader>jl', cmd.log, { desc = '[J]J [L]og' })
    vim.keymap.set('n', '<leader>jL', function() cmd.log { revisions = "'all()'" } end, { desc = '[J]J [L]og all' })
    vim.keymap.set('n', '<leader>js', cmd.status, { desc = '[J]J [S]tatus' })
    vim.keymap.set('n', '<leader>jd', cmd.describe, { desc = '[J]J [D]escribe' })
    vim.keymap.set('n', '<leader>je', cmd.edit, { desc = '[J]J [E]dit' })
    vim.keymap.set('n', '<leader>jn', cmd.new, { desc = '[J]J [N]ew' })
    vim.keymap.set('n', '<leader>ja', cmd.abandon, { desc = '[J]J [A]bandon' })
    vim.keymap.set('n', '<leader>ju', cmd.undo, { desc = '[J]J [U]ndo' })
    vim.keymap.set('n', '<leader>jy', cmd.redo, { desc = '[J]J Redo ([Y])' })
    vim.keymap.set('n', '<leader>jr', cmd.rebase, { desc = '[J]J [R]ebase' })
    vim.keymap.set('n', '<leader>jq', cmd.squash, { desc = '[J]J S[Q]uash' })

    -- Remote
    vim.keymap.set('n', '<leader>jf', cmd.fetch, { desc = '[J]J [F]etch' })
    vim.keymap.set('n', '<leader>jp', cmd.push, { desc = '[J]J [P]ush' })
    vim.keymap.set('n', '<leader>jo', cmd.open_pr, { desc = '[J]J [O]pen PR' })
    vim.keymap.set('n', '<leader>jO', function() cmd.open_pr { list_bookmarks = true } end, { desc = '[J]J [O]pen PR (select bookmark)' })

    -- Bookmarks
    vim.keymap.set('n', '<leader>jbc', cmd.bookmark_create, { desc = '[J]J [B]ookmark [C]reate' })
    vim.keymap.set('n', '<leader>jbd', cmd.bookmark_delete, { desc = '[J]J [B]ookmark [D]elete' })
    vim.keymap.set('n', '<leader>jbm', cmd.bookmark_move, { desc = '[J]J [B]ookmark [M]ove' })

    -- Diff
    vim.keymap.set('n', '<leader>jD', function() diff.open_vdiff() end, { desc = '[J]J [D]iff current buffer' })
  end,
}
