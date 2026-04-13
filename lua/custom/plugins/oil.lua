return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      {
        '-',
        '<cmd>Oil<CR>',
        desc = 'Open parent directory',
        silent = true,
      },
    },
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = true,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = false,
      prompt_save_on_select_new_entry = true,
      view_options = {
        show_hidden = true,
      },
    },
  },
}
