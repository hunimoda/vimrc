:set number
:set scrolloff=10
:set tabstop=4
:set shiftwidth=4
:set smartindent
:set cindent
:set cursorline

:highlight CursorLine cterm=NONE
:highlight CursorLineNr cterm=NONE ctermfg=red ctermbg=yellow

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
