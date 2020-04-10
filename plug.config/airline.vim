let g:airline_theme='solarized_flood'

let g:airline_powerline_fonts=1

let g:airline#extensions#whitespace#enabled = 1

let g:airline#extensions#tabline#enabled=1

let g:airline#extensions#tabline#left_sep=' '

let g:airline#extensions#tabline#left_alt_sep='|'

let g:webdevicons_enable_airline_tabline=1

let g:webdevicons_enable_airline_statusline=1

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

