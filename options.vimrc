" YouCompleteMe
" let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_stop_completion = ['<ENTER>']
let g:ycm_path_to_python_interpreter = g:python3_host_prog
let g:ycm_filetype_blacklist = {
  \ 'tagbar' : 1,
  \ 'qf' : 1,
  \ 'notes' : 1,
  \ 'unite' : 1,
  \ 'text' : 1,
  \ 'vimwiki' : 1,
  \ 'pandoc' : 1,
  \ 'infolog' : 1,
  \ 'mail' : 1
\ }


" NERDTree
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_synchronize_view = 0
let g:nerdtree_tabs_synchronize_focus = 0
let g:nerdtree_tabs_focus_on_files = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.DS_Store', '\.git$', 'node_modules$']
let NERDTreeMapQuit = "Q"


" NERDCommenter
let g:NERDSpaceDelims = 1


"ACK
let g:ackprg = 'ag --vimgrep'


" FZF
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_action = {
  \ 'enter': 'tabedit',
  \ 'ctrl-t': 'edit',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
\ }


" ALE
let g:ale_completion_enabled = 1
let g:ale_lint_delay = 600
let g:ale_lint_on_save = 0
let g:ale_linters = {
  \ 'bash': 'all',
  \ 'css': ['stylelint'],
  \ 'html': ['tidy'],
  \ 'javascript': ['eslint'],
  \ 'json': 'all',
  \ 'make': 'all',
  \ 'php': [],
  \ 'pug': 'all',
  \ 'python': ['pylint'],
  \ 'scss': ['stylelint'],
  \ 'typescript': ['tsserver', 'typecheck', 'tslint'],
  \ 'vim': 'all',
  \ 'vue': ['eslint', 'tsuquyomi'],
  \ 'yaml': 'all'
\ }
let g:ale_linter_aliases = {
  \ 'vue': ['html', 'css', 'scss', 'javascript', 'typescript']
\ }
let g:ale_fixers = {
  \ 'css': ['stylelint'],
  \ 'javascript': ['prettier', 'eslint'],
  \ 'typescript': ['tsserver', 'typecheck', 'prettier', 'tslint'],
  \ 'vue': ['eslint']
\ }


" devicons
if (has("guifont"))
  set guifont=SauceCodePro\ Nerd\ Font:h12
endif
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1


" airline
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#cursormode#enabled = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='quantum'


" indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify', 'tagbar', 'vimfiler', 'markdown', 'minimap']


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
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_expandword_key = '<Tab>'


" vim-vue
let g:vue_disable_pre_processors = 1


" git-gutter
let g:gitgutter_eager = 0


" rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
  \ 'separately': {
    \ 'nerdtree': 0,
  \ }
\ }

