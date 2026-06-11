-- nvim-tree
-- netrw is disabled in the plugin spec's `init` (lua/plugins.lua).
require("nvim-tree").setup({
  hijack_cursor = true,
  filters = {
    dotfiles = false, -- NERDTreeShowHidden = 1 (show hidden files)
    custom = { "^.git$", "^.DS_Store$", "^node_modules$" }, -- NERDTreeIgnore
  },
  actions = {
    open_file = {
      quit_on_open = true, -- NERDTreeQuitOnOpen = 1
    },
  },
  git = { enable = true }, -- replaces Xuyuanp/nerdtree-git-plugin
  renderer = { group_empty = true },
  on_attach = function(bufnr)
    local api = require("nvim-tree.api")
    api.config.mappings.default_on_attach(bufnr) -- keep default mappings
  end,
})
