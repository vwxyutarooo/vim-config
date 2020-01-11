language en_US

" For Neovim
if has("nvim")
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
  set inccommand=split
endif

" For MacVim
if has("gui_running")
  set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h12
  set guioptions=
endif

if exists('$TMUX')
  let &t_SI = "\ePtmux;\e\e[5 q\e\\"
  let &t_EI = "\ePtmux;\e\e[2 q\e\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let g:python_host_prog = system('echo -n $(which python)')
let g:python3_host_prog = system('echo -n $(which python3)')
" let g:python3_host_prog = '/usr/local/bin/python3'

set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set completeopt=menuone
set mouse=a
set nofoldenable
set number
set smartcase
set updatetime=300

set nobackup
set nowritebackup
set noswapfile

set encoding=utf-8
set fileencoding=utf-8
set listchars=eol:¬,tab:»-,trail:.,extends:>,precedes:<
set list
set conceallevel=0
set cursorline

set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set lazyredraw
set ttyfast
set synmaxcol=600
set redrawtime=80000
syntax sync minlines=100 maxlines=800


" Theme
" Check for :so $VIMRUNTIME/syntax/hitest.vim
set termguicolors
syntax enable
set background=dark
set t_ut=
colorscheme quantum
highlight SpecialKey guifg=#474D56
highlight NonText guifg=#474D56
highlight MatchParen cterm=underline ctermbg=6 gui=underline guibg=#425762 guifg=NONE
highlight VertSplit guibg=#2c3a41 guifg=#2c3a41
highlight link ESearchFileName airline_tab
highlight link ESearchMatch Search

