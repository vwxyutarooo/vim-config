-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Colorschemes — both load first so settings.vimrc can pick either one with
  -- `colorscheme night-owl` or `colorscheme tokyonight-<style>`. Switch by
  -- editing the `colorscheme` line in settings.vimrc.
  {
    "haishanh/night-owl.vim",
    lazy = false,
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      -- Style is used only when settings.vimrc selects a tokyonight scheme.
      -- Options: 'storm' | 'moon' | 'night' | 'day'
      require("tokyonight").setup({ style = "storm" })
    end,
  },

  -- Telescope
  { "nvim-lua/popup.nvim", lazy = false },
  { "nvim-lua/plenary.nvim", lazy = false },
  { "nvim-telescope/telescope.nvim", lazy = false },
  { "nvim-telescope/telescope-file-browser.nvim", lazy = false },
  { "sudormrfbin/cheatsheet.nvim", lazy = false },

  -- Editing
  { "scrooloose/nerdcommenter", lazy = false },
  { "tpope/vim-sleuth", lazy = false },
  { "editorconfig/editorconfig-vim", lazy = false },
  { "terryma/vim-multiple-cursors", lazy = false },
  { "tpope/vim-surround", lazy = false },
  { "terryma/vim-expand-region", lazy = false },
  { "tpope/vim-abolish", lazy = false },

  -- LSP / completion
  { "neoclide/coc.nvim", branch = "release", lazy = false },

  -- Git
  { "tpope/vim-fugitive", lazy = false },

  -- Integration
  { "mattn/webapi-vim", lazy = false },
  { "mattn/gist-vim", lazy = false, dependencies = { "mattn/webapi-vim" } },

  -- UI
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
      -- Disable netrw (recommended by nvim-tree) before it loads.
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
    -- setup() lives in lua/config/nvim-tree.lua
  },
  { "nvim-tree/nvim-web-devicons", lazy = false },
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- setup() lives in lua/config/lualine.lua
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    lazy = false,
    opts = {},
  },

  -- Languages / syntax
  { "styled-components/vim-styled-components", branch = "main", lazy = false },
  { "romus204/tree-sitter-manager.nvim", lazy = false },
}, {
  -- lazy.nvim options
  install = { colorscheme = { "quantum", "habamax" } },
  change_detection = { notify = false },
})
