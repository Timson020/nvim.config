" 显示行数
set number

" 显示语法
syntax enable
set syntax=on

" 
set shiftwidth=4

" 
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

" 设置背景
set bg=light

" 退出插入模式和命令模式 自动切换输入法
let g:input_toggle = 1
function! Fcitx2en() 
		let s:input_status = system('fcitx-remote')
		if s:input_status == 2
				let g:input_toggle = 1
				let l:a = system('fcitx-remote -c')
		endif
endfunction

" 设置
set ttimeoutlen=150

" autocmd InsertLeave,CmdLineLeave * call Fcitx2en()

" 插件开始
call plug#begin()

" 文件系统插件
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

" 对齐插件
Plug 'junegunn/vim-easy-align'

" 前端语法检测
" javascript语法检测
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jelera/vim-javascript-syntax'
" html语法检测
Plug 'othree/html5-syntax.vim'
" Less语法检测
Plug 'groenewege/vim-less'
" 支持css/sass/less/html颜色显示
Plug 'gko/vim-coloresque'

" 文件模糊查询插件
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" 插件结束
call plug#end()

" 设置重新设置的键位
exe 'source ~/.config/nvim/map.vim'

" 加载插件的配置文件
for s:path in split(glob('~/.config/nvim/plug.config/*.vim'), "\n")
  exe 'source ' . s:path
endfor

