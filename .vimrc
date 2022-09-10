"""""""""""""""""""""""""""""""""""""""
"	 James's .vimrc file :)
"
"Sections:
"	General
"	Colors and Fonts
"	Tex
"	Editing keybindings
"	
""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""

" sets history to remember last 50 commands
"set history=50

" enables filetype plugins
filetype on         "enable file type detection
filetype plugin on  "enable plugins for detected file type
filetype indent on  "load an indent file for detected file type

syntax on           "turn syntax hightlighting on
set re=0

set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
" keep a backup file
set backup
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//


""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
""""""""""""""""""""""""""""""""""""""

" PaperColor color scheme
" set background=dark
" colorscheme PaperColor
" Normal color scheme
" colorscheme pablo 
" best syntax highlighting
colorscheme molokai

"""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""
set ruler 	"show cursor position at all times
set spell 	"spell check
set number	"add numbers to each line on the left-hand side
set scrolloff=5	"don't scroll more than 5 lines
set smartcase	"can search specifically for capital letters
set showcmd	"display incomplete commands
set backspace=indent,eol,start



""""""""""""""""""""""""""""""""""""""
" Tex
""""""""""""""""""""""""""""""""""""""

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'zathura'
let g:tex_flavor='latex'

let maplocalleader = ','

""""""""""""""""""""""""""""""""""""""
" Editing keybindings
""""""""""""""""""""""""""""""""""""""

" CTRL_W is too annoying to type, repurpose minus

nnoremap -h <C-w>h
nnoremap -l <C-w>l
nnoremap -j <C-w>j
nnoremap -k <C-w>k
" split
nnoremap -s <C-w>s
" n for new; easier to reach than -v
nnoremap -n <C-w>v

" use WASD-equivalents for colemak to quickly shove windows around
nnoremap -a <C-w>H
nnoremap -s <C-w>L
nnoremap -w <C-w>K
nnoremap -r <C-w>J

" far
nnoremap <silent> -f <C-w>v:CtrlPRoot<CR>
" recent
nnoremap <silent> -r <C-w>v:CtrlPMRU<CR>
" close
nnoremap <silent> -c <C-w>v:CtrlPCurFile<CR>
nnoremap <silent> -b <C-w>v:CtrlPBuffer<CR>
nnoremap -w <C-w><C-w>

nnoremap <silent> <Space>f :CtrlPRoot<CR>
nnoremap <silent> <Space>r :CtrlPMRU<CR>
nnoremap <silent> <Space>c :CtrlPCurFile<CR>
nnoremap <silent> <Space>b :CtrlPBuffer<CR>

nnoremap <silent> <Space>h :Farr<CR>







"""""""""""""""""""""""""""""""""
" Compiling shortcuts
"""""""""""""""""""""""""""""""""

autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

autocmd BufEnter *.cpp colorscheme far
autocmd BufEnter *.py colorscheme far
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
autocmd bufnewfile *.cpp exe "1," . 10 . "g/created:.*/s//created: " .strftime("%d-%m-%Y")

"""""""""""""""""""""""""""""""""
" Brackets for c++
"""""""""""""""""""""""""""""""""

" These turned out to be way too annoying
" inoremap { {}<Left>
inoremap {<CR> {<CR>}<ESC>O
" inoremap {{ {
" inoremap {} {}
