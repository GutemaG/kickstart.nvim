-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>e', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>b', ':Neotree buffers<CR>', desc = 'NeoTree buffers', silent = true },
    -- use w to open the document symboles
    { '<leader><tab>', ':Neotree toggle document_symbols right<CR>', desc = 'NeoTree buffers', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<leader>e'] = 'close_window',
          ['l'] = 'open_with_window_picker',
        },
      },
    },
    sources = { 'filesystem', 'buffers', 'git_status', 'document_symbols' },
  },
}
