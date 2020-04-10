" TODO 插件开始
call plug#begin()

" 开始页面
Plug 'mhinz/vim-startify'

" 美化界面
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 文件系统插件
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

Plug 'airblade/vim-gitgutter'

" 文件搜索插件
Plug 'kien/ctrlp.vim'
" Plug 'wincent/command-t'

" 函数 类名 拓展栏
Plug 'majutsushi/tagbar'

" 对齐插件
Plug 'junegunn/vim-easy-align', { 'on': 'EasyAlign' }

" 代码自动补全
Plug 'valloric/youcompleteme'
" javascript until and thiry part for autocomplete
Plug 'ternjs/tern_for_vim'

" 支持css/sass/less/html颜色显示
Plug 'ap/vim-css-color'

" JavaScript语法检测
Plug 'pangloss/vim-javascript', { 'for': [ 'javascript', 'javascriptreact' ] }
Plug 'maxmellon/vim-jsx-pretty', { 'for': [ 'javascript', 'javascriptreact' ] }
Plug 'jelera/vim-javascript-syntax', { 'for': [ 'javascript', 'javascriptreact' ] }

" html语法检测
" Plug 'othree/html5-syntax.vim'

" Less语法检测
Plug 'groenewege/vim-less', { 'for': [ 'less' ] }

" Sass语法检测
Plug 'cakebaker/scss-syntax.vim', { 'for': [ 'sass' ] }

" 语法检测 (确保eslint 已经全局安装)
Plug 'vim-syntastic/syntastic', { 'for': [ 'javascript', 'javascriptreact' ] }

" TODO 插件结束
call plug#end()
