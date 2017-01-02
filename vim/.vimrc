
syntax on

" indentation
filetype indent plugin on

" setting up line numbers
set number
set numberwidth=1

" su line number and other
set ruler

" colorscheme definition
colorscheme desert

" to highlight more extra 80
" source http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Search options
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" highlight current line
set cursorline

" highlight matching [{()}]
set showmatch

" setting up pathogen
execute pathogen#infect()

