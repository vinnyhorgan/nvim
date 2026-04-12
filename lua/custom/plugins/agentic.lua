return {
  {
    'carlos-algms/agentic.nvim',
    opts = {
      provider = 'cline-acp',
      acp_providers = {
        ['cline-acp'] = {
          command = 'cline',
          args = { '--acp' },
        },
      },
    },
    keys = {
      {
        '<C-\\>',
        function()
          require('agentic').toggle()
        end,
        mode = { 'n', 'v', 'i' },
        desc = 'Toggle Cline Chat',
      },
    },
  },
}
