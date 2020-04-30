let g:ale_linters = {
\	'javascript': [ 'eslint' ],
\	'javascriptreact': [ 'eslint' ],
\	'python': [ 'pylint' ],
\	'css': [ 'stylelint' ],
\}

let g:ale_fix_on_save = 1

" 没有申明的 一律不检测
let g:ale_linters_explicit = 1

let g:ale_set_highlights = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
