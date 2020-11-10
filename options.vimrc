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
let $BAT_THEME='OneHalfDark'
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
