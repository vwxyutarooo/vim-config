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
    -- Override the default <Tab> (open preview) so it toggles the tree closed,
    -- matching the global <Tab> that opened it.
    vim.keymap.set("n", "<TAB>", api.tree.toggle, { buffer = bufnr, silent = true })
    -- Half-page scroll within the tree, cursor centered.
    vim.keymap.set("n", "<C-d>", "<C-d>zz", { buffer = bufnr, silent = true })
    vim.keymap.set("n", "<C-u>", "<C-u>zz", { buffer = bufnr, silent = true })
  end,
})

-- TAB toggles the tree and reveals the current file, matching fern's
-- `-drawer -reveal=% -toggle` (Vim side; see ~/.config/vim/options.vim).
vim.keymap.set("n", "<TAB>", "<Cmd>NvimTreeFindFileToggle<CR>", { silent = true })
