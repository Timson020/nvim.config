" Defx
" Config

" 自定义设置
call defx#custom#option('_', {
		\ 'columns': 'space:indent:icons:git:mark:filename:type',
		\ 'winwidth': 60,
		\ 'split': 'vertical',
		\ 'direction': 'topleft',
		\ 'show_ignored_files': 1,
		\ 'buffer_name': 'File System',
		\ 'root_marker': ': ',
		\ 'toggle': 1,
		\ 'resume': 1
		\ })

" 
call defx#custom#column('mark', { 'readonly_icon': '', 'selected_icon': '' })

"
" call defx#custom#column('icon', {
" 		\'directory_icon': '▸',
" 		\'opened_icon': '▾',
" 		\'root_icon': '$',
" 		\ })

" 
" call defx#custom#column('git', 'indicators', {
" 		\ 'Modified'  : '✹',
" 		\ 'Staged'    : '✚',
" 		\ 'Untracked' : '✭',
" 		\ 'Renamed'   : '➜',
" 		\ 'Unmerged'  : '═',
" 		\ 'Ignored'   : '☒',
" 		\ 'Deleted'   : '✖',
" 		\ 'Unknown'   : '?'
" 		\ })

" Function for Defx
autocmd FileType defx call s:defx_my_settings()

" 设置快捷键
function! s:defx_my_settings() abort
		" 目录树
		nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
		nnoremap <silent><buffer><expr> e defx#do_action('open_or_close_tree')
		nnoremap <silent><buffer><expr> <c-r> defx#do_action('redraw')
		nnoremap <silent><buffer><expr> ~ defx#do_action('cd', ['..'])

		" 打开文件
		nnoremap <silent><buffer><expr> o defx#do_action('multi',[['drop','split']])
		nnoremap <silent><buffer><expr> i defx#do_action('multi',['drop'])

		" 文件操作
		nnoremap <silent><buffer><expr> s defx#do_action('toggle_select')
		nnoremap <silent><buffer><expr> n defx#do_action('multi', ['new_multiple_files'])
		nnoremap <silent><buffer><expr> dd defx#do_action('remove')
		nnoremap <silent><buffer><expr> r defx#do_action('rename')
		nnoremap <silent><buffer><expr> C defx#do_action('copy')
		nnoremap <silent><buffer><expr> p defx#do_action('paste')
		nnoremap <silent><buffer><expr> m defx#do_action('move')

		nnoremap <silent><buffer><expr> q defx#do_action('quit')
endfunction

