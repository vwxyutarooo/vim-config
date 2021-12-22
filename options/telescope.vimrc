lua << EOF
local home = os.getenv('HOME')
local ignore_file = home .. '/.config/.rgignore'
local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
    scroll_strategy = 'limit',
    winblend = 20,
    vimgrep_arguments = {
      'rg',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden',
      '--ignore-file=' .. ignore_file
    }
  },
  pickers = {
    find_files = {
      find_command = {
        'rg',
        '--files',
        '--line-number',
        '--column',
        '--smart-case',
        '--hidden',
        '--ignore-file=' .. ignore_file
      }
    },
    file_browser = {
      hidden = true
    }
  }
}
require('cheatsheet').setup({
    -- For generic cheatsheets like default, unicode, nerd-fonts, etc
    bundled_cheatsheets = {
      disabled = { 'nerd-fonts', 'unicode' }
    },
    -- For plugin specific cheatsheets
    bundled_plugin_cheatsheets = true,
    include_only_installed_plugins = true,
})
EOF

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <C-f> <cmd>Telescope file_browser<cr>
noremap <C-p> <cmd>Telescope find_files<cr>
noremap <C-b> <cmd>Telescope buffers<cr>

command -nargs=* Tg lua require('telescope.builtin').grep_string({ search = <q-args> })
