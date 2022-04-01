let s:custom_header = [
\ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⣶⠶⣶⣤⣤⣀⠀⠀⠀⠀⠀⠀ ',
\ '⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠁⠀⢀⠈⢿⢀⣀⠀⠹⣿⣿⣿⣦⣄⠀⠀⠀ ',
\ '⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⠿⠀⠀⣟⡇⢘⣾⣽⠀⠀⡏⠉⠙⢛⣿⣷⡖⠀ ',
\ '⠀⠀⠀⠀⠀⣾⣿⣿⡿⠿⠷⠶⠤⠙⠒⠀⠒⢻⣿⣿⡷⠋⠀⠴⠞⠋⠁⢙⣿⣄ ',
\ '⠀⠀⠀⠀⢸⣿⣿⣯⣤⣤⣤⣤⣤⡄⠀⠀⠀⠀⠉⢹⡄⠀⠀⠀⠛⠛⠋⠉⠹⡇ ',
\ '⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣼⣇⣀⣀⣀⣛⣛⣒⣲⢾⡷ ',
\ '⢀⠤⠒⠒⢼⣿⣿⠶⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⣼⠃ ',
\ '⢮⠀⠀⠀⠀⣿⣿⣆⠀⠀⠻⣿⡿⠛⠉⠉⠁⠀⠉⠉⠛⠿⣿⣿⠟⠁⠀⣼⠃⠀ ',
\ '⠈⠓⠶⣶⣾⣿⣿⣿⣧⡀⠀⠈⠒⢤⣀⣀⡀⠀⠀⣀⣀⡠⠚⠁⠀⢀⡼⠃⠀⠀ ',
\ '⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣤⣭⣭⣭⣭⣭⣥⣤⣤⣤⣴⣟⠁    '
\ ]

" http://patorjk.com/software/taag/#p=display&h=2&v=2&f=Merlin1&t=
let s:custom_footer = [
\ '+--------------------------------------------------------------------+',
\ '|   ____                                    ____        _ _          |',
\ '|  |  _ \ _ __ __ _ _ __ __ _  ___  _ __   | __ )  __ _| | |         |',
\ '|  | | | | .__/ _. | .__/ _` |/ _ \| ._ \  |  _ \ / _` | | |         |',
\ '|  | |_| | | | (_| | | | (_| | (_) | | | | | |_) | (_| | | |         |',
\ '|  |____/|_|  \__,_|_|  \__, |\___/|_| |_| |____/ \__,_|_|_|         |',
\ '|      _         _   _  |___/    _____ _                             |',
\ '|     / \  _   _| |_| |__    _  |_   _(_)_ __ ___  ___  ___  _ __    |',
\ '|    / _ \| | | | __| ._ \  (_)   | | | | ._ ` _ \/ __|/ _ \| ._ \   |',
\ '|   / ___ \ |_| | |_| | | |  _    | | | | | | | | \__ \ (_) | | | |  |',
\ '|  /_/   \_\__,_|\__|_| |_| (_)   |_| |_|_| |_| |_|___/\___/|_| |_|  |',
\ '|                                                                    |',
\ '+--------------------------------------------------------------------+'
\ ]

let g:dashboard_custom_header = s:custom_header

let g:dashboard_custom_footer = s:custom_footer

let g:dashboard_default_executive ='clap'

let g:dashboard_custom_section = {
		\ 'new_file'           :{
      \ 'description': ['  Open New File     '],
      \ 'command': 'tabnew'
		\ },
		\ 'find_word'          :{
		  \ 'description': ['  Find word         '],
		  \ 'command': 'Clap grep2'
		\ },
		\ 'editor_keybindings': {
			\ 'description': ['  Edit keybindings  '],
			\ 'command': 'edit ~/.config/nvim/common/keybindings.vim'
		\ },
\ }

" \ 'last_session'        :{
"    \ 'description': ['  Reload last session                   SPC s l'],
"    \ 'command': 'SessionLoad'},
" \ 'find_history'        :{
"    \ 'description': ['  Recently opened files                 SPC f h'],
"    \ 'command': 'DashboardFindHistory'},
" \ 'find_file'           :{
"    \ 'description': ['  Find File                             SPC f f'],
"    \ 'command': 'DashboardFindFile'},
" \ 'change_colorscheme'  :{
"    \ 'description': ['  Change Colorscheme                    SPC t c'],
"    \ 'command': 'DashboardChangeColorscheme'},
" \ 'find_word'           :{
"    \ 'description': ['  Find word                             SPC f w'],
"    \ 'command': 'DashboardFindWord'},
" \ 'book_marks'          :{
"    \ 'description': ['  Jump to bookmark                      SPC f b'],
"    \ 'command': 'DashboardJumpMarks'},
