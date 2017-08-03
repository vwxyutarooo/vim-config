if has('patch-7.4.1778')
  set guicolors
endif
if (has("termguicolors"))
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set number
set cursorline
set clipboard=unnamed
set autoread
set noswapfile
set encoding=utf-8
set fileencoding=utf-8
set listchars=eol:¬,tab:»-,trail:.
set list

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

" Theme
syntax enable
set background=dark
colorscheme quantum
highlight SpecialKey guifg=#474D56
highlight NonText guifg=#474D56

" YouCompleteMe
let g:ycm_key_list_select_completion = ['<Down>']

" NERDTree
autocmd vimenter * NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" let g:nerdtree_tabs_autoclose=0
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.DS_Store', '\.git$', 'node_modules$']

" FZF
let g:fzf_layout = { 'window': '-tabnew' }
"let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set encoding=utf-8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
let g:airline_powerline_fonts=1

" indentLine
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'startify', 'tagbar', 'vimfiler', 'markdown', 'minimap']
let g:indentLine_enabled = 1
let g:indentLine_char = '│'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar = '.'

" markdown
set nofoldenable
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini', 'js=javascript']

" Emmet
"let g:user_emmet_expandabbr_key='<Tab>'
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" UltiSnips
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
