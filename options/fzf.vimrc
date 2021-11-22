" FZF
let $BAT_THEME='1337'
let $FZF_DEFAULT_COMMAND='pt --hidden --nogroup --nocolor --global-gitignore --ignore .git -g ""'
let g:fzf_layout = { 'down': '~60%' }
let g:fzf_buffers_jump = 1

" Grep
" noremap <C-p> :Files<CR>
" noremap <C-b> :Buffers<CR>
nmap <silent> <leader>j :BLines<CR>
nmap <silent> <leader>b :Buffer<CR>
nmap <silent> <leader>] :Rg <C-R><C-W><CR>
nmap <C-s> :Rg<space>
nnoremap <silent> <Leader>G :<C-u>silent call <SID>find_rip_grep()<CR>
command RG execute "Rg"
function! s:find_rip_grep() abort
  let command = "rg --ignore-file ~/.config/.ignore --column --line-number --no-heading --hidden --smart-case .+"
  let spec = { "options": "--delimiter : --nth 4.." }
  call fzf#vim#grep(command, 1, fzf#vim#with_preview(spec, "right:50%", "?"), 0)
endfunction
