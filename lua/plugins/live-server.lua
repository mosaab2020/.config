return {
  'barrett-ruth/live-server.nvim',
  build = 'pnpm add -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  lazy = true,
  config = function()
    require('live-server').setup({})
  end

}
