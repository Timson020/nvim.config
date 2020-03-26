" Defx
" Config

" 自定义设置
call defx#custom#option('_', {
		\ 'columns': 'icons:indent:git:mark:filename:type',
		\ 'winwidth': 40,
		\ 'split': 'vertical',
		\ 'direction': 'topleft',
		\ 'show_ignored_files': 0,
		\ 'buffer_name': 'File System',
		\ 'toggle': 1,
		\ 'resume': 1
		\ })
"
call defx#custom#column('icon', {
		\'directory_icon': '▸',
		\'opened_icon': '▾',
		\'root_icon': '$',
		\ })

call defx#custom#column('git', 'indicators', {
		\ 'Modified'  : '✹',
		\ 'Staged'    : '✚',
		\ 'Untracked' : '✭',
		\ 'Renamed'   : '➜',
		\ 'Unmerged'  : '═',
		\ 'Ignored'   : '☒',
		\ 'Deleted'   : '✖',
		\ 'Unknown'   : '?'
		\ })


" 设置快捷键


" Function for Defx
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
		" 
		nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
		nnoremap <silent><buffer><expr> e defx#do_action('open_or_close_tree')
		nnoremap <silent><buffer><expr> <C-r> defx#do_action('redraw')
		nnoremap <silent><buffer><expr> c defx#do_action('cd')
		
		"
		nnoremap <silent><buffer><expr> o defx#do_action('multi',[['drop','split']])
		nnoremap <silent><buffer><expr> i defx#do_action('multi',['drop'])
		" 
		nnoremap <silent><buffer><expr> s defx#do_action('toggle_select')
		nnoremap <silent><buffer><expr> n defx#do_action('multi', ['new_multiple_files'])
		nnoremap <silent><buffer><expr> d defx#do_action('remove')
		nnoremap <silent><buffer><expr> r defx#do_action('rename')

		nnoremap <silent><buffer><expr> q defx#do_action('quit')
endfunction

"function! s:defx_toggle_tree() abort
		" Open current file, or toggle directory expand/collapse
		" if defx#is_directory()
				" return defx#do_action('open_or_close_tree')
		" endif
		" return defx#do_action('multi', ['drop'])
" endfunction

