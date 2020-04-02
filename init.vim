" 显示行数
set number

" 设置主体
colorscheme solarized8_low

" 显示语法
syntax enable
set syntax=on

" 
set shiftwidth=2

" 缩进
set tabstop=2

" 设置编码
set encoding=utf-8

" 
set noexpandtab

" 自动缩进
set autoindent

" 自动缩进
set smartindent

" 显示当前行
set cursorline

" 显示文件的百分比
set ruler

" 突出显示tab space
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽

" manual // 手工定义折叠
" indent // 用缩进表示折叠
" expr　 // 用表达式来定义折叠
" jsyntax // 用语法高亮来定义折叠
" diff // 对没有更改的文本进行折叠
" marker // 用标志折叠
set foldmethod=indent

" 折叠的层级
set foldlevel=1

" 插件开始
call plug#begin()

" 开始页面
Plug 'mhinz/vim-startify'

" 美化界面
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 文件系统插件
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

Plug 'airblade/vim-gitgutter'

" 文件搜索插件
" Plug 'wincent/command-t'
Plug 'kien/ctrlp.vim'

" 对齐插件
Plug 'junegunn/vim-easy-align', { 'on': 'EasyAlign' }

" 前端语法检测
" javascript语法支持
Plug 'pangloss/vim-javascript', { 'for': [ 'js', 'jsx' ] }
Plug 'maxmellon/vim-jsx-pretty', { 'for': [ 'js', 'jsx' ] }
Plug 'jelera/vim-javascript-syntax'
" html语法检测
Plug 'othree/html5-syntax.vim'
" Less语法检测
Plug 'groenewege/vim-less', { 'for': [ 'less' ] }

" 支持css/sass/less/html颜色显示
Plug 'gko/vim-coloresque'

" 语法检测
Plug 'vim-syntastic/syntastic', { 'for': [ 'js', 'jsx' ] }
" 自动化格式
Plug 'Chiel92/vim-autoformat'

" 插件结束
call plug#end()

" 设置实用工具
for s:path in split(glob('~/.config/nvim/common/*.vim'), '\n')
	exe 'source ' . s:path
endfor

" 加载插件的配置文件
for s:path in split(glob('~/.config/nvim/plug.config/*.vim'), '\n')
	exe 'source ' . s:path
endfor

