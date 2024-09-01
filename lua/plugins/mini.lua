return {
  'echasnovski/mini.nvim',
  version = false,
  -- lazy = true,
  config = function()
    require('mini.jump2d').setup( -- No need to copy this inside `setup()`. Will be used automatically.
      {
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
    -- require('mini.starter').setup({
    --   -- No need to copy this inside `setup()`. Will be used automatically.
    --   -- Whether to open starter buffer on VimEnter. Not opened if Neovim was
    --   -- started with intent to show something else.
    --   autoopen = true,
    --
    --   -- Whether to evaluate action of single active item
    --   evaluate_single = false,
    --
    --   -- Items to be displayed. Should be an array with the following elements:
    --   -- - Item: table with <action>, <name>, and <section> keys.
    --   -- - Function: should return one of these three categories.
    --   -- - Array: elements of these three types (i.e. item, array, function).
    --   -- If `nil` (default), default items will be used (see |mini.starter|).
    --   items = nil,
    --
    --   -- Header to be displayed before items. Converted to single string via
    --   -- `tostring` (use `\n` to display several lines). If function, it is
    --   -- evaluated first. If `nil` (default), polite greeting will be used.
    --   header = nil,
    --
    --   -- Footer to be displayed after items. Converted to single string via
    --   -- `tostring` (use `\n` to display several lines). If function, it is
    --   -- evaluated first. If `nil` (default), default usage help will be shown.
    --   footer = nil,
    --
    --   -- Array  of functions to be applied consecutively to initial content.
    --   -- Each function should take and return content for 'Starter' buffer (see
    --   -- |mini.starter| and |MiniStarter.content| for more details).
    --   content_hooks = nil,
    --
    --   -- Characters to update query. Each character will have special buffer
    --   -- mapping overriding your global ones. Be careful to not add `:` as it
    --   -- allows you to go into command mode.
    --   query_updaters = 'abcdefghijklmnopqrstuvwxyz0123456789_-.',
    --
    --   -- Whether to disable showing non-error feedback
    --   silent = false,
    -- })
  end
}
