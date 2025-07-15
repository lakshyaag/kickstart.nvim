return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  lazy = false,
  version = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'stevearc/dressing.nvim',
    'folke/snacks.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    {
      -- support for image pasting
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = { file_types = { 'markdown', 'Avante' } },
      ft = { 'markdown', 'Avante' },
    },
    { 'github/copilot.vim' },
  },
  build = 'make',
  opts = {
    provider = 'copilot',
    providers = {
      copilot = {
        model = 'gpt-4.1',
      },
    },
    dual_boost = { enabled = false },
    auto_suggestions_provider = 'copilot',
    hints = { enabled = false },
    file_selector = { provider = 'snacks' },
    behaviour = {
      support_paste_from_clipboard = true,
      auto_approve_tool_permissions = false,
      auto_suggestions = false,
      enable_cursor_planning_mode = false,
    },
    windows = {
      ask = {
        floating = false,
      },
    },
    {
      input = {
        provider = 'snacks',
        provider_opts = {
          -- Additional snacks.input options
          title = 'Avante Input',
          icon = ' ',
        },
      },
    },
  },
}
