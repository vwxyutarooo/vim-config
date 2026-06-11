-- telescope
local home = os.getenv("HOME")
local ignore_file = home .. "/.config/.rgignore"
local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
    scroll_strategy = "limit",
    winblend = 20,
    vimgrep_arguments = {
      "rg",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden",
      "--sort-files",
      "--ignore-file=" .. ignore_file,
    },
  },
  pickers = {
    find_files = {
      find_command = {
        "rg",
        "--files",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--sort-files",
        "--ignore-file=" .. ignore_file,
      },
    },
    buffers = {
      mappings = {
        i = {
          -- Open in an existing buffer
          ["<CR>"] = function(prompt_bufnr)
            local bufnr = require("telescope.actions.state").get_selected_entry().bufnr
            require("telescope.actions").close(prompt_bufnr) -- move to here!
            local winid = vim.tbl_filter(function(win)
              return vim.api.nvim_win_get_buf(win) == bufnr
            end, vim.api.nvim_list_wins())[1]
            vim.api.nvim_set_current_win(winid)
          end,
        },
      },
    },
  },
  extensions = {
    file_browser = {
      hidden = true,
    },
  },
})
require("telescope").load_extension("file_browser")
require("cheatsheet").setup({
  -- For generic cheatsheets like default, unicode, nerd-fonts, etc
  bundled_cheatsheets = {
    disabled = { "nerd-fonts", "unicode" },
  },
  -- For plugin specific cheatsheets
  bundled_plugin_cheatsheets = true,
  include_only_installed_plugins = true,
})

-- Keymaps (ported from the previous Vimscript mappings)
local map = vim.keymap.set
map("n", "<leader>tf", "<cmd>Telescope find_files<cr>")
map("n", "<leader>tg", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>tb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>th", "<cmd>Telescope help_tags<cr>")
map("n", "<leader>tc", "<cmd>Telescope file_browser grouped=true path=%:p:h<cr>")
map("n", "gst", "<cmd>Telescope git_status<cr>")
map("n", "<C-f>", "<cmd>Telescope file_browser<cr>")
map("", "<C-p>", "<cmd>Telescope find_files<cr>")

-- Grep the word under the cursor (was `:Grep <C-R><C-W><CR>`)
map("n", "<leader>]", function()
  require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })
end, { silent = true })

vim.api.nvim_create_user_command("Grep", function(o)
  require("telescope.builtin").grep_string({ search = o.args })
end, { nargs = "*" })
