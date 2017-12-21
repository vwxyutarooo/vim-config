" The original values would be 24 bit color but apparently that is not possible
let s:brown = "#905532"
let s:aqua =  "#3AFFDB"
let s:blue = "#689FB6"
let s:darkBlue = "#44788E"
let s:purple = "#834F79"
let s:lightPurple = "#834F79"
let s:red = "#AE403F"
let s:beige = "#F5C06F"
let s:yellow = "#F09F17"
let s:orange = "#D4843E"
let s:darkOrange = "#F16529"
let s:pink = "#CB6F6F"
let s:salmon = "#EE6E73"
let s:green = "#8FAA54"
let s:lightGreen = "#31B53E"
let s:white = "#FFFFFF"


" NERDTress File highlighting
function! NERDTreeHighlightFile(icon, extension, fg, bg)
	exec 'autocmd filetype nerdtree highlight color_' . a:extension .' guibg='. a:bg .' guifg='. a:fg
	exec 'autocmd filetype nerdtree syn match color_' . a:extension .' #' . a:icon . '  # containedin=NERDTreeFile,' . a:extension
	" exec 'autocmd filetype nerdtree syn match ' . a:extension .' #\s*(.{1})' . a:extension . '$# containedin=NERDTreeFile,' . a:extension
endfunction

call NERDTreeHighlightFile('λ', 'ml', s:yellow, 'none')
" call NERDTreeHighlightFile('λ', 'mli', s:yellow, 'none')
call NERDTreeHighlightFile('', 'styl', s:green, 'none')
call NERDTreeHighlightFile('', 'scss', s:pink, 'none')
call NERDTreeHighlightFile('', 'py', s:yellow, 'none')
" call NERDTreeHighlightFile('', 'pyc', s:yellow, 'none')
" call NERDTreeHighlightFile('', 'pyd', s:yellow, 'none')
" call NERDTreeHighlightFile('', 'pyo', s:yellow, 'none')
call NERDTreeHighlightFile('', 'php', s:purple, 'none')
call NERDTreeHighlightFile('', 'md', s:yellow, 'none')
call NERDTreeHighlightFile('', 'json', s:beige, 'none')
call NERDTreeHighlightFile('', 'js', s:beige, 'none')
call NERDTreeHighlightFile('', 'bmp', s:aqua, 'none')
" call NERDTreeHighlightFile('', 'gif', s:aqua, 'none')
" call NERDTreeHighlightFile('', 'ico', s:aqua, 'none')
" call NERDTreeHighlightFile('', 'jpeg', s:aqua, 'none')
" call NERDTreeHighlightFile('', 'jpg', s:aqua, 'none')
" call NERDTreeHighlightFile('', 'png', s:aqua, 'none')
call NERDTreeHighlightFile('', 'html', s:darkOrange, 'none')
call NERDTreeHighlightFile('', 'hbs', s:orange, 'none')
" call NERDTreeHighlightFile('', 'mustache', s:orange, 'none')
" call NERDTreeHighlightFile('', 'erb', s:red, 'none')
call NERDTreeHighlightFile('', 'css', s:blue, 'none')
" call NERDTreeHighlightFile('', 'less', s:darkBlue, 'none')
" call NERDTreeHighlightFile('', 'conf', s:white, 'none')
" call NERDTreeHighlightFile('', 'ini', s:white, 'none')
" call NERDTreeHighlightFile('', 'yml', s:white, 'none')
call NERDTreeHighlightFile('', 'rss', s:darkOrange, 'none')
call NERDTreeHighlightFile('', 'coffee', s:brown, 'none')
call NERDTreeHighlightFile('', 'twig', s:green, 'none')
call NERDTreeHighlightFile('', 'c', s:blue, 'none')
" call NERDTreeHighlightFile('', 'cc', s:blue, 'none')
" call NERDTreeHighlightFile('', 'cp', s:blue, 'none')
" call NERDTreeHighlightFile('', 'cpp', s:blue, 'none')
" call NERDTreeHighlightFile('', 'cxx', s:blue, 'none')
call NERDTreeHighlightFile('', 'cpp', s:blue, 'none')
call NERDTreeHighlightFile('', 'hs', s:beige, 'none')
call NERDTreeHighlightFile('', 'lhs', s:beige, 'none')
call NERDTreeHighlightFile('', 'lua', s:purple, 'none')
call NERDTreeHighlightFile('', 'jl', s:purple, 'none')
call NERDTreeHighlightFile('', 'go', s:beige, 'none')
call NERDTreeHighlightFile('', 'ts', s:blue, 'none')
" call NERDTreeHighlightFile('', 'db', s:blue, 'none')
" call NERDTreeHighlightFile('', 'dump', s:blue, 'none')
call NERDTreeHighlightFile('', 'sql', s:darkBlue, 'none')
" call NERDTreeHighlightFile('', 'sln', s:purple, 'none')
call NERDTreeHighlightFile('', 'suo', s:purple, 'none')
call NERDTreeHighlightFile('', 'diff', s:white, 'none')
call NERDTreeHighlightFile('', 'scala', s:red, 'none')
call NERDTreeHighlightFile('', 'java', s:purple, 'none')
call NERDTreeHighlightFile('', 'xul', s:darkOrange, 'none')
call NERDTreeHighlightFile('', 'clj', s:green, 'none')
" call NERDTreeHighlightFile('', 'cljc', s:green, 'none')
call NERDTreeHighlightFile('', 'pl', s:blue, 'none')
" call NERDTreeHighlightFile('', 'pm', s:blue, 'none')
" call NERDTreeHighlightFile('', 't', s:blue, 'none')
call NERDTreeHighlightFile('', 'cljs', s:green, 'none')
" call NERDTreeHighlightFile('', 'edn', s:green, 'none')
call NERDTreeHighlightFile('', 'rb', s:red, 'none')
call NERDTreeHighlightFile('', 'fish', s:green, 'none')
call NERDTreeHighlightFile('', 'sh', s:lightPurple, 'none')
call NERDTreeHighlightFile('', 'dart', s:blue, 'none')
call NERDTreeHighlightFile('', 'fsharp', s:darkBlue, 'none')
" call NERDTreeHighlightFile('', 'fs', s:blue, 'none')
" call NERDTreeHighlightFile('', 'fsi', s:blue, 'none')
" call NERDTreeHighlightFile('', 'fsscript', s:blue, 'none')
" call NERDTreeHighlightFile('', 'fsx', s:blue, 'none')
call NERDTreeHighlightFile('', 'rlib', s:darkOrange, 'none')
" call NERDTreeHighlightFile('', 'rs', s:darkOrange, 'none')
call NERDTreeHighlightFile('', 'd', s:red, 'none')
call NERDTreeHighlightFile('', 'erl', s:lightPurple, 'none')
" call NERDTreeHighlightFile('', 'hrl', s:pink, 'none')
call NERDTreeHighlightFile('', 'ai', s:darkOrange, 'none')
call NERDTreeHighlightFile('', 'psb', s:darkBlue, 'none')
call NERDTreeHighlightFile('', 'psd', s:darkBlue, 'none')
call NERDTreeHighlightFile('', 'jsx', s:blue, 'none')
call NERDTreeHighlightFile('', 'vim', s:green, 'none')
