" 退出插入模式和命令模式 自动切换输入法
" 设置执行时间
" set ttimeoutlen=150
" let g:input_toggle = 1
" function! Fcitx2en() 
		" let s:input_status = system('fcitx-remote')
		" if s:input_status == 2
			" let g:input_toggle = 1
			" 先不要解开，会导致报错
			" let l:a = system('fcitx-remote -c')
		" endif
" endfunction
" autocmd InsertLeave,CmdLineLeave * call Fcitx2en()



" 开启24色号
" Enables 24-bit RGB color in the TUI
if has('termguicolors')
	set termguicolors
endif



" mac系统剪切板和vim的寄存器共享
if has('mac')
	let g:clipboard = {
		\   'name': 'macOS-clipboard',
		\   'copy': {
		\      '+': 'pbcopy',
		\      '*': 'pbcopy',
		\    },
		\   'paste': {
		\      '+': 'pbpaste',
		\      '*': 'pbpaste',
		\   },
		\   'cache_enabled': 0,
		\ }
endif
if has('clipboard')
	set clipboard& clipboard+=unnamedplus
endif
