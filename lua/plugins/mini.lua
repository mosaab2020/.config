return {
  'echasnovski/mini.nvim',
  version = false,
  -- lazy = true,
  config = function()
    -- require('mini.statusline').setup()
    -- require('mini.starter').setup()
    require('mini.ai').setup({
      -- Table with textobject id as fields, textobject specification as values.
      -- Also use this to disable builtin textobjects. See |MiniAi.config|.
      custom_textobjects = nil,

      -- Module mappings. Use `''` (empty string) to disable one.
      mappings = {
        -- Main textobject prefixes
        around = 'a',
        inside = 'i',

        -- Next/last variants
        around_next = 'an',
        inside_next = 'in',
        around_last = 'al',
        inside_last = 'il',

        -- Move cursor to corresponding edge of `a` textobject
        goto_left = 'g[',
        goto_right = 'g]',
      },

      -- Number of lines within which textobject is searched
      n_lines = 35,

      -- How to search for object (first inside current line, then inside
      -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
      -- 'cover_or_nearest', 'next', 'previous', 'nearest'.
      search_method = 'cover_or_next',

      -- Whether to disable showing non-error feedback
      silent = false,
    })
    require('mini.jump2d').setup({
      -- Function producing jump spots (byte indexed) for a particular line.
      -- For more information see |MiniJump2d.start|.
      -- If `nil` (default) - use |MiniJump2d.default_spotter|
      spotter = nil,

      -- Characters used for labels of jump spots (in supplied order)
      labels = 'abcdefghijklmnopqrstuvwxyz',

      -- Options for visual effects
      view = {
        -- Whether to dim lines with at least one jump spot
        dim = false,

        -- How many steps ahead to show. Set to big number to show all steps.
        n_steps_ahead = 0,
      },

      -- Which lines are used for computing spots
      allowed_lines = {
        blank = true,         -- Blank line (not sent to spotter even if `true`)
        cursor_before = true, -- Lines before cursor line
        cursor_at = true,     -- Cursor line
        cursor_after = true,  -- Lines after cursor line
        fold = true,          -- Start of fold (not sent to spotter even if `true`)
      },

      -- Which windows from current tabpage are used for visible lines
      allowed_windows = {
        current = true,
        not_current = true,
      },

      -- Functions to be executed at certain events
      hooks = {
        before_start = nil, -- Before jump start
        after_jump = nil,   -- After jump was actually done
      },

      -- Module mappings. Use `''` (empty string) to disable one.
      mappings = {
        start_jumping = '<CR>',
      },

      -- Whether to disable showing non-error feedback
      silent = false,
    })
  end
}
