language en_US

if has('patch-7.4.1778')
  set guicolors
endif
if (has("termguicolors"))
  set termguicolors
endif
if has("gui_vimr")
	" Here goes some VimR specific settings like
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

set number
set cursorline
set clipboard=unnamed
set autoread

set nobackup
set nowritebackup
set noswapfile

set encoding=utf-8
set fileencoding=utf-8
set listchars=eol:¬,tab:»-,trail:.
set list

set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set lazyredraw
set synmaxcol=128
syntax sync minlines=256

" Key maps
nmap <ESC><ESC> :noh<ENTER>
nmap <C-p> :FZF<ENTER>

" Theme
syntax enable
set background=dark
colorscheme quantum
highlight SpecialKey guifg=#474D56
highlight NonText guifg=#474D56

" YouCompleteMe
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_confirm_extra_conf = 0

" NERDTree
autocmd vimenter * NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" let g:nerdtree_tabs_autoclose=0
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.DS_Store', '\.git$', 'node_modules$']

" FZF
let g:fzf_layout = { 'window': '-tabnew' }
"let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" ALE
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_linters = {
	\ 'php': [],
	\ 'html': [],
	\ 'css': ['stylelint'],
	\ 'javascript': ['eslint'],
	\ 'vue': ['eslint']
\ }
let g:ale_fixers = {
	\ 'css': ['stylelint'],
	\ 'javascript': ['eslint']
\ }
let g:ale_linter_aliases = { 'vue': ['html', 'css', 'scss', 'javascript'] }

" devicons
if (has("guifont"))
	set guifont=SauceCodePro\ Nerd\ Font:h12
endif
let g:airline_powerline_fonts = 1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" indentLine
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'startify', 'tagbar', 'vimfiler', 'markdown', 'minimap']
let g:indentLine_enabled = 1
let g:indentLine_char = '│'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'

" markdown
set nofoldenable
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini', 'js=javascript']

" Emmet
let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_expandword_key = '<Tab>'
autocmd FileType html,css,scss,styl EmmetInstall
imap <expr> <tab> emmet#expandAbbrIntelligent('\<tab>')

