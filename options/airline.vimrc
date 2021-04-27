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

