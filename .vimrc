:set number
:set relativenumber
:set tabstop=4
:set shiftwidth=4
:set smartindent
:set cindent

:inoremap kj			<Esc>
:vnoremap kj			<Esc>
:nnoremap <BS>			:set hls!<CR>

:inoremap <expr> '		getline('.')[col('.') - 1] == "'" ? "\<Right>" : "''\<Left>"
:inoremap <expr> " 		getline('.')[col('.') - 1] == '"' ? "\<Right>" : "\"\"\<Left>"
:inoremap <expr> ( 		"()<Left>"
:inoremap <expr> { 		"{}<Left>"
:inoremap <expr> [ 		"[]<Left>"
:inoremap <expr> )		getline('.')[col('.') - 1] == ')' ? "\<Right>" : ")"
:inoremap <expr> } 		getline('.')[col('.') - 1] == '}' ? "\<Right>" : "}"
:inoremap <expr> ] 		getline('.')[col('.') - 1] == ']' ? "\<Right>" : "]"
:inoremap <expr> <CR>	getline('.')[col('.') - 1] =~ "['\"\\)}\\]>]" ? "\<CR>\<Esc>O" : "\<CR>"
