" 显示行数
set number

" 显示相对行号
set relativenumber

" 设置主体
colorscheme solarized8_low
set bg=dark

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

" 智能对齐
set smartindent

" 外部修改后,自动读取
set autoread

" 显示当前行
set cursorline

" 显示文件的百分比
set ruler

" 突出显示tab space
" set list
" set listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽

" enabled Concealing Characters
set conceallevel=1

" 
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" manual // 手工定义折叠
" indent // 用缩进表示折叠
" expr　 // 用表达式来定义折叠
" jsyntax // 用语法高亮来定义折叠
" diff // 对没有更改的文本进行折叠
" marker // 用标志折叠
set foldmethod=indent

" 折叠的层级
set foldlevel=1

set foldtext=FoldText()

function! FoldText()
	" Get first non-blank line
	let fs = v:foldstart

	while getline(fs) =~? '^\s*$' | let fs = nextnonblank(fs + 1)
	endwhile

	if fs > v:foldend
		let line = getline(v:foldstart)
	else
		let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
	endif

	" let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
	" let foldSize = 1 + v:foldend - v:foldstart
	" let foldSizeStr = ' ' . foldSize . ' lines '
	" let foldLevelStr = repeat('+--', v:foldlevel)
	" let lineCount = line('$')
	" let foldPercentage = printf('[%.1f', (foldSize*1.0)/lineCount*100) . '%] '
	" let expansionString = repeat('.', w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))

	return line . '   ➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜➜             '
endfunction

exe 'source ~/.config/nvim/plug-list.vim'

" COMMON 设置实用工具
for s:path in split(glob('~/.config/nvim/common/*.vim'), '\n')
	exe 'source ' . s:path
endfor

" 加载插件的配置文件
for s:path in split(glob('~/.config/nvim/plug.config/*.vim'), '\n')
	exe 'source ' . s:path
endfor

