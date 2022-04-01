" TODO 插件开始
call plug#begin()

" 开始页面
" Plug 'mhinz/vim-startify'
Plug 'glepnir/dashboard-nvim'

Plug 'itchyny/vim-cursorword'

" 美化界面
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'

" 文件系统插件
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

" Git
Plug 'airblade/vim-gitgutter'

" 文件搜索插件
" Plug 'kien/ctrlp.vim'
" Plug 'wincent/command-t'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

" 注释工具
Plug 'vim-scripts/The-NERD-Commenter'

" 函数 类名 拓展栏
Plug 'majutsushi/tagbar'

" 对齐插件
Plug 'junegunn/vim-easy-align', { 'on': 'EasyAlign' }

" 支持css/sass/less/html颜色显示
Plug 'ap/vim-css-color'

" 彩虹括号显示
Plug 'luochen1990/rainbow'

" python virtualenv
Plug 'jmcantrell/vim-virtualenv'

" 多语言语法高亮
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" JavaScript语法高亮
Plug 'pangloss/vim-javascript', { 'for': [ 'javascript', 'javascriptreact' ] }
Plug 'maxmellon/vim-jsx-pretty', { 'for': [ 'javascript', 'javascriptreact' ] }

" Less语法高亮
" Plug 'groenewege/vim-less', { 'for': [ 'less' ] }

" Sass语法高亮
" Plug 'cakebaker/scss-syntax.vim', { 'for': [ 'sass', 'scss' ] }

" dockerfile语法高亮
" Plug 'ekalinin/dockerfile.vim'

" TODO LSP
" 代码自动补全
" Plug 'valloric/youcompleteme'

" javascript until and thiry part for autocomplete
" Plug 'ternjs/tern_for_vim'

" 语法检测 (确保eslint已经全局安装)
" Plug 'vim-syntastic/syntastic', { 'for': [ 'javascript', 'javascriptreact' ] }
" Plug 'dense-analysis/ale'

" TODO 插件结束
call plug#end()
