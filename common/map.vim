let g:maplocalleader=';'

" ;f 显示文件目录
nmap <silent> <LocalLeader>f :Defx<cr>

" ;p 打开搜索文件页面
nmap <silent> <LocalLeader>p :CtrlP<cr>
nmap <silent> <LocalLeader>b :CtrlPBuffer<cr>

" 新开标签页
nmap <silent> <LocalLeader>t :tabnew<cr>
nmap <silent> <c-t> :tabnew<cr>
nmap <silent> <LocalLeader>q :tabnext<cr>
nmap <silent> <LocalLeader>e :tabprevious<cr>

" 打开tagbar
nmap <silent> <LocalLeader>r :TagbarToggle<cr>

" 保存
nmap <silent> <c-s> :w<cr>
