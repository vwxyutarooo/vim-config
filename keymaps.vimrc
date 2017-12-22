" Key maps
noremap <ESC><ESC> :noh<ENTER>
noremap <C-p> :FZF<ENTER>
noremap <C-j> :GFiles?<ENTER>
noremap <C-a> :ALEFix<ENTER>

map Q <Nop>
" Smart way to move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l


" Close bracket such as HTML tags
" iabbre  <// </<C-X><C-O>
imap <C-Space> <C-X><C-O>


if !exists("g:surround_no_mappings") || ! g:surround_no_mappings
  xmap s   <Plug>VSurround
endif
