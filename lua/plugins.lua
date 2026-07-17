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
  {
    "haishanh/night-owl.vim",
    lazy = false,
    priority = 1000,
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-file-browser.nvim' ,
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
  },
  { "sudormrfbin/cheatsheet.nvim" },

  -- Editing
  { "scrooloose/nerdcommenter" },
  { "tpope/vim-sleuth" },
  { "terryma/vim-multiple-cursors" },
  { "tpope/vim-surround" },
  { "terryma/vim-expand-region" },
  { "tpope/vim-abolish" },

  -- LSP / completion
  { "neoclide/coc.nvim", branch = "release" },

  -- Git
  { "tpope/vim-fugitive" },

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
  { "nvim-tree/nvim-web-devicons" },
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- setup() lives in lua/config/lualine.lua
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  -- Languages / syntax
  { "romus204/tree-sitter-manager.nvim", lazy = false },
}, {
  -- lazy.nvim options
  install = { colorscheme = { "quantum", "habamax" } },
  change_detection = { notify = false },
})
