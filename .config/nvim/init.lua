require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
--require "user.cmp"
-- Spelling setup
require('cmp').setup {
  sources = {
    { name = 'spell' }
  }
}

require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.alpha"
require "user.whichkey"
require "user.autocommands"
require "user.orgmode"
