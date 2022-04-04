let g:ale_linters = {
\	'javascript': [ 'eslint' ],
\	'javascriptreact': [ 'eslint' ],
\	'python': [ 'pylint' ],
\	'css': [ 'stylelint' ],
\}

" 保存的时候修复
let g:ale_fix_on_save = 0

" 没有申明的 一律不检测
let g:ale_linters_explicit = 1

let g:ale_set_highlights = 1
let g:ale_sign_column_always = 1

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

" let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']

" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
