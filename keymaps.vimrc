" Key maps
noremap <silent> <ESC><ESC> :noh<CR>

map Q <Nop>
map q <Nop>

" Smart way to move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-\> <C-w>x
map H gT
map L gt

" NERDTree
no <C-j> <C-w>j
no <C-k> <C-w>k
no <C-l> <C-w>l
no <C-h> <C-w>h
nnoremap <silent> <C-i> :NERDTreeToggle<CR>

" Close bracket such as HTML tags
imap <C-Space> <C-X><C-O>


if !exists("g:surround_no_mappings") || ! g:surround_no_mappings
  xmap s <Plug>VSurround
endif


" Grep
noremap <C-p> :Files<CR>
" noremap <C-j> :GFiles<CR>
nmap <silent> <leader>j :BLines<CR>
nmap <silent> <leader>b :Buffer<CR>
nmap <silent> <leader>] :Rg <C-R><C-W><CR>
nmap <leader>g :Rg<space>
nnoremap <silent> <Leader>G :<C-u>silent call <SID>find_rip_grep()<CR>
function! s:find_rip_grep() abort
  let command = "rg --ignore-file ~/.config/.ignore --column --line-number --no-heading --hidden --smart-case .+"
  let spec = { "options": "--delimiter : --nth 4.." }
  call fzf#vim#grep(command, 1, fzf#vim#with_preview(spec, "right:50%", "?"), 0)
endfunction
