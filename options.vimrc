" indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify', 'tagbar', 'vimfiler', 'markdown', 'minimap', 'fzf']


" markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = [
  \ 'c++=cpp',
  \ 'viml=vim',
  \ 'bash=sh',
  \ 'ini=dosini',
  \ 'js=javascript',
  \ 'ts=typescript'
\ ]


" Emmet
let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key = '<C-Tab>'
let g:user_emmet_expandword_key = '<C-Tab>'


" vim-vue
let g:vue_disable_pre_processors = 1
