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
  -- Colorscheme — load first so settings.vimrc can `colorscheme material`
  {
    "kaicataldo/material.vim",
    lazy = false,
    priority = 1000,
    init = function()
      -- Variant must be set before settings.vimrc runs `colorscheme material`.
      -- Options: 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
      --   (plus the *-community legacy variants)
      vim.g.material_theme_style = "default"
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
  { "scrooloose/nerdtree", lazy = false },
  { "Xuyuanp/nerdtree-git-plugin", lazy = false, dependencies = { "scrooloose/nerdtree" } },
  { "ryanoasis/vim-devicons", lazy = false },
  { "nvim-tree/nvim-web-devicons", lazy = false },
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local opts = {
        options = {
          theme = "auto", -- set per-colorscheme below; "auto" avoids reading
                          -- material colors before the colorscheme is loaded
          icons_enabled = true,
          globalstatus = true,
          component_separators = { left = "|", right = "|" },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "diff" }, -- was airline_section_b = hunks
          lualine_c = {
            "filename",
            { function() return vim.g.coc_status or "" end }, -- was airline coc extension
          },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = {}, -- was airline_section_y = '' (empty)
          lualine_z = { "location" },
        },
        tabline = {
          -- show tab pages labeled with the filename instead of tab numbers
          lualine_a = { { "tabs", mode = 1 } },
        },
        extensions = { "nerdtree", "fugitive", "quickfix" },
      }
      require("lualine").setup(opts)

      -- Apply material.vim's bundled lualine theme once the colorscheme is
      -- loaded (plugins are sourced before settings.vimrc runs `colorscheme
      -- material`, so the palette isn't available at initial setup).
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function(args)
          opts.options.theme = (args.match == "material")
            and require("material.lualine") or "auto"
          require("lualine").setup(opts)
        end,
      })
    end,
  },
  -- Indent guides via virtual text (no conceal — keeps conceallevel=0 intact)
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
