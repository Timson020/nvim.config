" TODO 插件开始
call plug#begin()

" 配色方案
Plug 'titanzero/zephyrium'
Plug 'glepnir/zephyr-nvim'
Plug 'mhartington/oceanic-next'
" Plug 'RRethy/nvim-base16'

" 开始页面
Plug 'glepnir/dashboard-nvim'

" 显示页面当前选择的单词
Plug 'itchyny/vim-cursorword'
" 缩紧引导线
Plug 'lukas-reineke/indent-blankline.nvim'
" 缩紧
Plug 'kevinhwang91/nvim-ufo'
Plug 'kevinhwang91/promise-async'

" 图标
Plug 'kyazdani42/nvim-web-devicons'
" 文件系统插件
Plug 'kyazdani42/nvim-tree.lua'
" 顶部标签页
Plug 'akinsho/bufferline.nvim'
" 底部信息栏
Plug 'nvim-lualine/lualine.nvim'

" Git
" Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'

" 文件搜索插件
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope-ui-select.nvim'

" 注释工具
Plug 'vim-scripts/The-NERD-Commenter'

" 函数 类名 拓展栏
Plug 'simrat39/symbols-outline.nvim'

" 命令行
Plug 'akinsho/toggleterm.nvim'

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
" 弃用
" 使用tressitter
" JavaScript语法高亮
" Plug 'leafgarland/typescript-vim', { 'for': [ 'typescript', 'typescriptreact' ] }
" Plug 'pangloss/vim-javascript', { 'for': [ 'javascript', 'javascriptreact' ] }
" Plug 'maxmellon/vim-jsx-pretty', { 'for': [ 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' ] }

" TODO LSP
" Language server protocol
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

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
" 补全美化
Plug 'onsails/lspkind-nvim'
Plug 'tami5/lspsaga.nvim'

" TODO 插件结束
call plug#end()
