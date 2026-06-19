" Key maps
noremap <silent> <ESC><ESC> :noh<CR>

noremap Q <Nop>
noremap q <Nop>

" Smart way to move between windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-\> <C-w>x
noremap H gT
noremap L gt


" Close bracket such as HTML tags
imap <C-Space> <C-X><C-O>


if !exists("g:surround_no_mappings") || ! g:surround_no_mappings
  xmap s <Plug>VSurround
endif

