" TODO 插件开始
call plug#begin()

" 开始页面
Plug 'glepnir/dashboard-nvim'

" 显示页面当前选择的单词
Plug 'itchyny/vim-cursorword'

" 图标
Plug 'kyazdani42/nvim-web-devicons'
" 文件系统插件
Plug 'kyazdani42/nvim-tree.lua'
" 顶部标签页
Plug 'akinsho/bufferline.nvim'
" 底部信息栏
Plug 'nvim-lualine/lualine.nvim'

" Git
Plug 'airblade/vim-gitgutter'

" 文件搜索插件
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'

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

" TODO LSP
" Language server protocol
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" 代码补全引擎 不含补全源
Plug 'hrsh7th/nvim-cmp'
" 片段补全引擎
Plug 'hrsh7th/vim-vsnip'
" 下面都是补全源
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
" 片段补全源
Plug 'rafamadriz/friendly-snippets'

" TODO 插件结束
call plug#end()
