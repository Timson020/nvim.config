let g:maplocalleader=';'

" 保存
" C-s == control + s
nmap <silent> <C-s> :w<cr>

" 新开标签页
nmap <silent> <C-t> :tabnew<cr>
nmap <silent> <LocalLeader>q :tabnext<cr>
nmap <silent> <LocalLeader>e :tabprevious<cr>

" controller + jkhl 重新控制每给窗口的大小
nmap <silent> <C-l> :vertical resize+2<cr>
nmap <silent> <C-h> :vertical resize-2<cr>
nmap <silent> <C-j> :resize+2<cr>
nmap <silent> <C-k> :resize-2<cr>

" 快速浏览
nmap <silent> <C-u> 4k
nmap <silent> <C-d> 4j

" 打开terminal
" nmap <silent> <LocalLeader>t :sp | terminal<cr>

" ;p 打开搜索文件页面
" 插件名 telescope.nvim
nmap <silent> <LocalLeader>ff :Telescope find_files<cr>
nmap <silent> <LocalLeader>fw :Telescope live_grep<cr>
nmap <silent> <LocalLeader>git :Telescope git_files<cr>
nmap <silent> <LocalLeader>buf :Telescope buffers<cr>
" nmap <silent> <LocalLeader>clap :<C-u>Clap<cr>

" 打开tagbar
" 插件名     simrat39/symbols-outline.nvim
nmap <silent> <LocalLeader>r :SymbolsOutline<cr>

" ale查询下一个语法错误
" 插件名     dense-analysis/ale
" nmap <silent> <LocalLeader>an :ALENext<cr>
" nmap <silent> <LocalLeader>ap :ALEPrevious<cr>

" 注释工具
" 插件名     vim-scripts/The-NERD-Commenter
nmap <silent> mm <leader>c<space>

" 显示文件目录
" 插件名     Shougo/defx.nvim
" nmap <silent> <LocalLeader>f :Defx<cr>
nmap <silent> <LocalLeader>t :NvimTreeToggle<cr>
