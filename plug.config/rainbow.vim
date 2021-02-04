let g:rainbow_active=1

" 开启自动启动功能
" if (exists('g:rainbow_active') && g:rainbow_active)
" 		auto syntax * call rainbow#hook()
" 		auto colorscheme * call rainbow#show()
" 		" 下面这命令使rainbow在vim启动时被打开
" 		autocmd VimEnter * nested call rainbow#toggle()
" endif


let g:rainbow_conf = {
\ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\ 'parentheses': ['start=/{/ end=/}/ fold', 'start=/\[/ end=/\]/ fold', 'start=/(/ end=/)/ fold'],
\ 'separately': {
		\ '*': {
		\	'parentheses': ['start=/(/ step=/,/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold'],
		\	},
		\ 'html': {
		\	'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\	},
\ }
\ }
