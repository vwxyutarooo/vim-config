" Find files using Telescope command-line sugar.
" nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <C-f> <cmd>Telescope file_browser<cr>
noremap <C-p> <cmd>Telescope find_files<cr>
noremap <C-b> <cmd>Telescope buffers<cr>

command -nargs=* Tg lua require('telescope.builtin').grep_string({ search = <q-args> })

lua << EOF
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
  }
}
EOF
