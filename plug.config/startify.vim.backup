let s:custom_header = [
\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⣶⠶⣶⣤⣤⣀⠀⠀⠀⠀⠀⠀ ',
\ '⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠁⠀⢀⠈⢿⢀⣀⠀⠹⣿⣿⣿⣦⣄⠀⠀⠀ ',
\ '⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⠿⠀⠀⣟⡇⢘⣾⣽⠀⠀⡏⠉⠙⢛⣿⣷⡖⠀ ',
\ '⠀⠀⠀⠀⠀⣾⣿⣿⡿⠿⠷⠶⠤⠙⠒⠀⠒⢻⣿⣿⡷⠋⠀⠴⠞⠋⠁⢙⣿⣄ ',
\ '⠀⠀⠀⠀⢸⣿⣿⣯⣤⣤⣤⣤⣤⡄⠀⠀⠀⠀⠉⢹⡄⠀⠀⠀⠛⠛⠋⠉⠹⡇ ',
\ '⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣼⣇⣀⣀⣀⣛⣛⣒⣲⢾⡷ ',
\ '⢀⠤⠒⠒⢼⣿⣿⠶⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣼⠃ ',
\ '⢮⠀⠀⠀⠀⣿⣿⣆⠀⠀⠻⣿⡿⠛⠉⠉⠁⠀⠉⠉⠛⠿⣿⣿⠟⠁⠀⣼⠃⠀ ',
\ '⠈⠓⠶⣶⣾⣿⣿⣿⣧⡀⠀⠈⠒⢤⣀⣀⡀⠀⠀⣀⣀⡠⠚⠁⠀⢀⡼⠃⠀⠀ ',
\ '⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣤⣭⣭⣭⣭⣭⣥⣤⣤⣤⣴⣟⠁    '
\ ]

" 自定义文字地址(ascii art)
" http://patorjk.com/software/taag/#p=display&h=2&v=2&f=Merlin1&t=
let s:custom_footer_2 = [
\ '+--------------------------------------------------------------------+',
\ '|   ____                                    ____        _ _          |',
\ '|  |  _ \ _ __ __ _ _ __ __ _  ___  _ __   | __ )  __ _| | |         |',
\ '|  | | | | .__/ _. | .__/ _` |/ _ \| ._ \  |  _ \ / _` | | |         |',
\ '|  | |_| | | | (_| | | | (_| | (_) | | | | | |_) | (_| | | |         |',
\ '|  |____/|_|  \__,_|_|  \__, |\___/|_| |_| |____/ \__,_|_|_|         |',
\ '|      _         _   _  |___/    _____ _                             |',
\ '|     / \  _   _| |_| |__    _  |_   _(_)_ __ ___  ___  ___  _ __    |',
\ '|    / _ \| | | | __| ._ \  (_)   | | | | ._ ` _ \/ __|/ _ \| ._ \   |',
\ '|   / ___ \ |_| | |_| | | |  _    | | | | | | | | \__ \ (_) | | | |  |',
\ '|  /_/   \_\__,_|\__|_| |_| (_)   |_| |_|_| |_| |_|___/\___/|_| |_|  |',
\ '|                                                                    |',
\ '+--------------------------------------------------------------------+'
\ ]

" 居中处理函数
function! Startify_center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

" let g:startify_custom_header = Startify_center(s:custom_header)
" let g:startify_custom_footer = Startify_center(s:custom_footer_2)

let g:startify_custom_header = s:custom_header
let g:startify_custom_footer = s:custom_footer_2

autocmd! FileType startify
autocmd  FileType startify set laststatus=0 showtabline=0
  \| autocmd BufLeave <buffer> set laststatus=2 showtabline=2

