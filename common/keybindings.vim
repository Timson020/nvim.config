let g:maplocalleader=';'

" 保存
nmap <silent> <c-s> :w<cr>

" 新开标签页
" nmap <silent> <LocalLeader>t :tabnew<cr>
nmap <silent> <c-t> :tabnew<cr>
nmap <silent> <LocalLeader>q :tabnext<cr>
nmap <silent> <LocalLeader>e :tabprevious<cr>

" ;p 打开搜索文件页面
" 插件名 vim-clap
nmap <silent> <LocalLeader>cf :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
nmap <silent> <LocalLeader>cw :<C-u>Clap grep2<cr>
nmap <silent> <LocalLeader>git :<C-u>Clap git_diff_files<cr>
nmap <silent> <LocalLeader>ss :<C-u>Clap filetypes<cr>
nmap <silent> <LocalLeader>clap :<C-u>Clap<cr>

" 插件名     kien/ctrlp.vim
" nmap <silent> <LocalLeader>p :CtrlP<cr>
" nmap <silent> <LocalLeader>b :CtrlPBuffer<cr>

" 打开tagbar
" 插件名     majutsushi/tagbar
nmap <silent> <LocalLeader>r :TagbarToggle<cr>

" ale查询下一个语法错误
" 插件名     dense-analysis/ale
nmap <silent> <LocalLeader>an :ALENext<cr>
nmap <silent> <LocalLeader>ap :ALEPrevious<cr>

" 注释工具
" 插件名     vim-scripts/The-NERD-Commenter
nmap <silent> mm <leader>c<space>

" ;f 显示文件目录
" 插件名     Shougo/defx.nvim
nmap <silent> <LocalLeader>f :Defx<cr>
