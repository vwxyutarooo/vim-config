-- lualine
-- Required from options.vimrc, which runs after settings.vimrc applies
-- `colorscheme material` — so the material palette is already available here.
local opts = {
  options = {
    theme = "auto", -- replaced with the material theme below when active
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
  extensions = { "nvim-tree", "fugitive", "quickfix" },
}

-- Use material.vim's bundled lualine theme when material is the active
-- colorscheme; reapply on colorscheme changes.
local function apply_theme()
  opts.options.theme = (vim.g.colors_name == "material")
    and require("material.lualine") or "auto"
  require("lualine").setup(opts)
end

apply_theme()
vim.api.nvim_create_autocmd("ColorScheme", { callback = apply_theme })
