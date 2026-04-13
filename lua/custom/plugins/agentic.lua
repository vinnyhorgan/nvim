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
      {
        '<C-\'>',
        function()
          require('agentic').add_selection_or_file_to_context()
        end,
        mode = { 'n', 'v' },
        desc = 'Add file or selection to pi context',
      },
      {
        '<C-,>',
        function()
          require('agentic').new_session()
        end,
        mode = { 'n', 'v', 'i' },
        desc = 'New pi session',
      },
      {
        '<A-i>r',
        function()
          require('agentic').restore_session()
        end,
        mode = { 'n', 'v', 'i' },
        silent = true,
        desc = 'Restore pi session',
      },
    },
  },
}
