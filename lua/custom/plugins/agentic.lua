return {
  {
    'carlos-algms/agentic.nvim',
    opts = {
      provider = 'pi-acp',
      acp_providers = {
        ['pi-acp'] = {
          name = 'pi',
          command = 'pi-acp',
          args = {},
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
        desc = 'Toggle pi Chat',
      },
    },
  },
}
