let g:maplocalleader=';'

" ;f 显示文件目录
nmap <silent> <LocalLeader>f :Defx<cr>

" ;p 打开搜索文件页面
" Clap
nmap <silent> <LocalLeader>cf :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
nmap <silent> <LocalLeader>git :<C-u>Clap git_diff_files<cr>
nmap <silent> <LocalLeader>ss :<C-u>Clap filetypes<cr>
nmap <silent> <LocalLeader>clap :<C-u>Clap<cr>
" CtrlP
" nmap <silent> <LocalLeader>p :CtrlP<cr>
" nmap <silent> <LocalLeader>b :CtrlPBuffer<cr>

" 新开标签页
nmap <silent> <LocalLeader>t :tabnew<cr>
nmap <silent> <c-t> :tabnew<cr>
nmap <silent> <LocalLeader>q :tabnext<cr>
nmap <silent> <LocalLeader>e :tabprevious<cr>

" 打开tagbar
nmap <silent> <LocalLeader>r :TagbarToggle<cr>

" ale查询下一个语法错误
nmap <silent> <LocalLeader>an :ALENext<cr>
nmap <silent> <LocalLeader>ap :ALEPrevious<cr>

" nerd-commenter
nmap <silent> mm <leader>c<space>

" 保存
nmap <silent> <c-s> :w<cr>
