set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" 使用eslint来对javascript文件做检测
let g:syntastic_javascript_checkers=['eslint']

" location list来导航错误列表
let g:syntastic_always_populate_loc_list=1

" 错误提示框弹出 高度
let g:syntastic_loc_list_height=5
let g:syntastic_auto_loc_list=1

" 打开时候检测
let g:syntastic_check_on_open=1

" 减少卡顿
let g:syntastic_check_on_wq=0

" 设置图标
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='►'
