-- lualine
-- Required from options.vimrc, which runs after settings.vimrc applies the
-- chosen `colorscheme` — so the active palette is already available here.
local opts = {
  options = {
    theme = "auto", -- resolved per-colorscheme in apply_theme() below
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
    lualine_a = {
      {
        "tabs",
        mode = 1,
        -- Default max_length is vim.o.columns / 3, which collapses tabs into
        -- "..." quickly. Use the full window width so far more tabs stay
        -- visible (function form keeps it correct across window resizes).
        max_length = function()
          return vim.o.columns
        end,
        -- Allow longer per-tab labels before truncating a single tab name.
        tab_max_length = 40,
      },
    },
  },
  extensions = { "nvim-tree", "fugitive", "quickfix" },
}

-- Match the statusline to the active colorscheme. tokyonight ships a bundled
-- lualine theme (colors_name is "tokyonight" or a "tokyonight-<style>"
-- variant); night-owl ships none, so fall back to "auto", which derives the
-- palette from the colorscheme's highlight groups. Reapply on every
-- ColorScheme event so manual switches in settings.vimrc are tracked.
local function apply_theme()
  local is_tokyonight = (vim.g.colors_name or ""):match("^tokyonight") ~= nil
  opts.options.theme = is_tokyonight
    and require("lualine.themes.tokyonight") or "auto"
  require("lualine").setup(opts)
end

apply_theme()
vim.api.nvim_create_autocmd("ColorScheme", { callback = apply_theme })
