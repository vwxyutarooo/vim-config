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

" Theme
syntax enable
set background=dark
colorscheme quantum
highlight SpecialKey guifg=#474D56
highlight NonText guifg=#474D56

" NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
" Open NERDTree on console vim startup
let g:nerdtree_tabs_open_on_console_startup=1
" Close NERDTree when all other windows were closed 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
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

