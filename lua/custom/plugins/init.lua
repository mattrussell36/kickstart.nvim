-- You can add your own plugins here or in other files in this directory!
-- I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'tpope/vim-fugitive' },
  { 'christoomey/vim-tmux-navigator' },
  { 'github/copilot.vim' },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {},
    cmd = { 'CopilotChatOpen', 'CopilotChat' },
  },
  {
    'windwp/nvim-ts-autotag',
    opts = {},
  },
  -- {
  --   -- Sets vim.o.background to 'dark' or 'light' from os system settings
  --   'f-person/auto-dark-mode.nvim',
  --   opts = {},
  -- },
}
