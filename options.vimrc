" YouCompleteMe
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
let g:ycm_goto_buffer_command = 'split-or-existing-window'
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['javascript'] = ['.']


" Denite
call denite#custom#var('file/rec', 'command', ['pt', '--follow', '--nogroup', '-g', ''])
call denite#custom#var('grep', 'command', ['pt', '--nogroup', '--smart-case', '--hidden'])
call denite#custom#var('grep', 'default_opts', [])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#option('default', {
      \ 'split': 'floating',
      \ 'winwidth': float2nr(&columns * 0.8),
      \ 'wincol': float2nr((&columns - (&columns * 0.8)) / 2),
\ })


" NERDTree
" https://github.com/ryanoasis/vim-devicons/issues/250
highlight! link NERDTreeFlags NERDTreeDir
let g:nerdtree_tabs_synchronize_view = 0
let g:nerdtree_tabs_synchronize_focus = 0
let g:nerdtree_tabs_focus_on_files = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.DS_Store', '\.git$', 'node_modules$']
let NERDTreeMapQuit = "Q"
let NERDTreeQuitOnOpen=1


" NERDCommenter
let g:NERDSpaceDelims = 1


" FZF
let $FZF_DEFAULT_COMMAND='pt --hidden --nogroup --nocolor --global-gitignore --ignore .git -g ""'
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_action = {
  \ 'enter': 'tabedit',
  \ 'ctrl-t': 'edit',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
\ }


" devicons
if (has("guifont"))
  set guifont=SauceCodePro\ Nerd\ Font:h12
endif
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1


" airline
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

function! AirlineInit()
  let g:airline_section_b = airline#section#create_left(['hunks'])
  let g:airline_section_y = ''
endfunction
autocmd VimEnter * call AirlineInit()


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

" Unite
let g:unite_source_history_yank_enable = 1
