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
      { "filename", path = 1 },
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
        -- Safety net for the "auto" fallback theme: it ends with
        -- `M.inactive = M.normal`, so the default inactive=lualine_a_inactive
        -- would equal lualine_a_normal and make active/inactive tabs
        -- identical. Pointing inactive at the dim section-c body keeps them
        -- distinct. (The night-owl and tokyonight themes already define a
        -- distinct inactive, so this is harmless for them.)
        tabs_color = {
          active = "lualine_a_normal",
          inactive = "lualine_c_normal",
        },
      },
    },
  },
  extensions = { "nvim-tree", "fugitive", "quickfix" },
}

-- night-owl ships no lualine theme, only a lightline one
-- (night-owl.vim/autoload/lightline/colorscheme/nightowl.vim). Lightline
-- palettes are [fg, bg] pairs per section, which map directly onto lualine's
-- structure. Porting it here gives night-owl an authentic statusline with a
-- genuinely distinct `inactive` block (the lightline palette uses #d6deeb on
-- #112630 for inactive and the blue accent for the selected tab), so the
-- previous "auto" theme's `M.inactive = M.normal` tab collision is gone.
local nightowl_theme = {
  normal = {
    a = { fg = "#112630", bg = "#82aaff", gui = "bold" }, -- blue accent
    b = { fg = "#d6deeb", bg = "#112630" },
    c = { fg = "#d6deeb", bg = "#112630" },
  },
  insert = {
    a = { fg = "#112630", bg = "#addb67", gui = "bold" }, -- green
    b = { fg = "#d6deeb", bg = "#112630" },
  },
  replace = {
    a = { fg = "#112630", bg = "#ff5874", gui = "bold" }, -- red
    b = { fg = "#d6deeb", bg = "#112630" },
  },
  visual = {
    a = { fg = "#112630", bg = "#c792ea", gui = "bold" }, -- purple
    b = { fg = "#d6deeb", bg = "#112630" },
  },
  -- Distinct from `normal` — this is what makes inactive tabs/windows dim.
  inactive = {
    a = { fg = "#d6deeb", bg = "#112630" },
    b = { fg = "#d6deeb", bg = "#112630" },
    c = { fg = "#d6deeb", bg = "#112630" },
  },
}

-- Match the statusline to the active colorscheme. tokyonight ships a bundled
-- lualine theme (colors_name is "tokyonight" or a "tokyonight-<style>"
-- variant); night-owl uses the ported `nightowl_theme` above. Anything else
-- falls back to "auto", which derives a palette from highlight groups.
-- Reapply on every ColorScheme event so manual switches are tracked.
local function apply_theme()
  local name = vim.g.colors_name or ""
  if name:match("^tokyonight") then
    opts.options.theme = require("lualine.themes.tokyonight")
  elseif name == "night-owl" then
    opts.options.theme = nightowl_theme
  else
    opts.options.theme = "auto"
  end
  require("lualine").setup(opts)
end

apply_theme()
vim.api.nvim_create_autocmd("ColorScheme", { callback = apply_theme })
