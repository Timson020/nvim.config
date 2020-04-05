let g:maplocalleader=';'

" ;f 显示文件目录
nmap <silent> <LocalLeader>f :Defx -columns=icons:indent:git:mark:filename:type<cr>

" ;p 打开搜索文件页面
nmap <silent> <LocalLeader>p :CtrlP<cr>

" 新开标签页
nmap <silent> <LocalLeader>t :tabnew<cr>
nmap <silent> <c-t> :tabnew<cr>

" 保存
nmap <silent> <c-s> :w<cr>
nmap <silent> save :w<cr>