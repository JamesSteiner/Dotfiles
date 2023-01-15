" Evan Chen's .vimrc

" vint: -ProhibitSetNoCompatible
set nocompatible

colorscheme reclipse
filetype plugin indent on
syntax on
let mapleader='='
let maplocalleader = ','


" {{{ Plugins
call plug#begin('~/.vim/plugged')
Plug 'alunny/pegjs-vim',             { 'for' : 'pegjs' }
Plug 'avakhov/vim-yaml',             { 'for' : 'yaml' }
Plug 'cespare/vim-toml',             { 'for' : 'toml' }
Plug 'chrisbra/csv.vim'
Plug 'chutzpah/icalendar.vim',       { 'for' : 'icalendar' }
Plug 'dag/vim-fish',                 { 'for' : 'fish' }
Plug 'farseer90718/vim-taskwarrior', { 'for' : 'taskedit' }
Plug 'hura/vim-asymptote',           { 'for' : 'asy' }
Plug 'kchmck/vim-coffee-script',     { 'for' : 'coffee' }
Plug 'kovisoft/slimv',               { 'for' : 'lisp' }
Plug 'mboughaba/i3config.vim',       { 'for' : 'i3config' }
Plug 'mgedmin/python-imports.vim',   { 'for' : 'python' }
Plug 'neoclide/jsonc.vim',           { 'for' : 'json' }
Plug 'petRUShka/vim-sage',           { 'for' : 'sage' }
Plug 'plasticboy/vim-markdown',      { 'for' : 'markdown' }
Plug 'tools-life/taskwiki',          { 'for' : ['vimwiki', 'markdown'] }
Plug 'vim-latex/vim-latex'
Plug 'vim-python/python-syntax',     { 'for' : 'python' }
Plug 'vimwiki/vimwiki',              { 'for' : ['vimwiki', 'markdown'] }

Plug 'FelikZ/ctrlp-py-matcher'
Plug 'Shougo/echodoc'
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'aymericbeaumet/vim-symlink'
Plug 'ciaranm/detectindent'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mg979/vim-visual-multi'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'preservim/nerdtree'
Plug 'svintus/vim-editexisting'
Plug 'thinca/vim-localrc'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'vim-scripts/ingo-library'
Plug 'vim-scripts/SyntaxRange'
Plug 'vim-scripts/YankRing.vim'
Plug 'ypcrts/securemodelines'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" }}}

" A million settings for addons {{{
" https://github.com/junegunn/fzf.vim/issues/374
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
let NERDTreeIgnore = [
  \  '\.pyc$',
  \  '\.pyo$',
  \  '\~$',
  \  '\.aux$',
  \  '\.fdb_latexmk$',
  \  '\.fls$',
  \  '\.log$',
  \  '\.out$',
  \  '\.pre$',
  \  '\.pytxcode$',
  \  '\.pytxmcr$',
  \  '\.pytxpyg$',
  \  '\.synctex.gz$',
  \  'pythontex_data.pkl',
  \  '\.png$',
  \  '\.jpg$',
  \  '\.pdf$',
  \  '-[0-9]\+\.asy$',
  \  ]
let NERDTreeShowLineNumbers = 1
let g:completor_filetype_map = {}
let g:csv_highlight_column = 'y'
let g:csv_no_conceal = 1
let g:csv_nomap_cr = 1
let g:csv_start = 1
let g:csv_end = 100
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cmd= 'CtrlPBuffer'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_map = '<c-b>'
let g:ctrlp_max_files = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 2
let g:detectindent_preferred_when_mixed = 1
let g:EasyMotion_keys = "aoeuidhtns;qjkxbmwvz',.pyfgcrl/"
let g:echodoc_enable_at_startup=1
let g:echodoc#type='popup'
let g:far#source='rg'
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.4 } }
let g:gitgutter_map_keys = 0
let g:gutentags_cache_dir = '~/.vim/tags/'
let g:gutentags_define_advanced_commands=1
let g:gutentags_file_list_command = {
  \ 'markers': {
      \ '.git': 'sh ' . $HOME . '/dotfiles/sh-scripts/guten-targets-git.sh',
      \ },
  \ }
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:jedi#show_call_signatures = 0
let g:plug_url_format = 'https://www.github.com/%s'
let g:python_highlight_all = 1
let g:taskwiki_disable_concealcursor=1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vimwiki_filetypes = ['markdown']
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.mkd'}]
let g:yankring_history_dir = '$HOME/.cache/'
let grepprg = 'ag --nogroup --nocolor'

" Airline auto from vim-plugins
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#ctrlspace#enabled = 1
let g:airline#extensions#fugitive#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#ctrlspace_show_tab_nr = 0
let g:airline#extensions#tabline#current_first = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
let g:CtrlSpaceStatuslineFunction ='airline#extensions#ctrlspace#statusline()'
function! AirlineSetup()
  let g:airline_section_a = airline#section#create_left(['mode', 'readonly',])
  let g:airline_section_b = airline#section#create_left(['branch', 'hunks'])
  let g:airline_section_c = airline#section#create_left(['file', ])
  let g:airline_section_gutter = airline#section#create(['%<', 'tagbar', '%='])
  let g:airline_section_x = airline#section#create_right(['crypt', 'paste', 'iminsert', ' %v'])
  let g:airline_section_y = airline#section#create(['maxlinenr', ])
  let g:airline_section_z = airline#section#create(['filetype'])
  let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ '␓'     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ '␖'     : 'V',
      \ }
  let s:IA = [ 'gray15', 'gray80', 35, 234 ]
  let g:airline#themes#wombat#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#extensions#whitespace#checks = ['indent', 'trailing', 'mixed-indent-file', 'conflicts']
endfunction

" ALE + CoC
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_format = '[%severity%] [%linter%] %s'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_fixers = { '*' : ['remove_trailing_lines', 'trim_whitespace' ] } " by default
let g:ale_fix_on_save = 1
let g:ale_keep_list_window_open = 0
let g:ale_open_list = 0
let g:ale_languagetool_options = '--disable COMMA_PARENTHESIS_WHITESPACE,WHITESPACE_RULE,UPPERCASE_SENTENCE_START,LC_AFTER_PERIOD,FILE_EXTENSIONS_CASE,ARROWS,EN_UNPAIRED_BRACKETS,UNLIKELY_OPENING_PUNCTUATION,UNIT_SPACE,ENGLISH_WORD_REPEAT_BEGINNING_RULE,CURRENCY,REP_PASSIVE_VOICE'
let g:ale_python_mypy_enabled = 0
let g:ale_python_mypy_options = '--ignore-missing-imports --enable-recursive-aliases'
let g:ale_set_balloon= 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '#'
let g:ale_sign_warning = '>'
let g:coc_start_at_startup = 0
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-htmldjango',
  \ 'coc-jedi',
  \ 'coc-json',
  \ 'coc-pyright',
  \ 'coc-sh',
  \ 'coc-snippets',
  \ 'coc-tabnine',
  \ 'coc-tsserver',
  \ 'coc-vimlsp',
  \ 'coc-yaml',
  \ ]
call plug#end()
" }}}
" Register ALE {{{
call ale#Set('djlint_executable', 'djlint')
call ale#Set('djlint_options', '')

function! ALEFixDjlint(buffer) abort
    let l:executable = ale#Var(a:buffer, 'djlint_executable')
    let l:options = ale#Var(a:buffer, 'djlint_options')

    return {
    \   'command': ale#Escape(l:executable)
    \       . ' --reformat'
    \       . (empty(l:options) ? '': ' ' . l:options)
    \       . ' -',
    \}
endfunction
execute ale#fix#registry#Add('djlint', 'ALEFixDjlint', ['htmljdjango'], 'Fixer for Django templates')
function! CocStartAndDisableALELSP()
  CocStart
  CocEnable
  let g:ale_disable_lsp = 1
  echo 'CoC has been started!'
endfunction
" }}}

" Procedure for shell commands {{{
" https://vim.fandom.com/wiki/Display_output_of_shell_commands_in_new_window
function! s:ExecuteInShell(command)
  let command = join(map(split(a:command), 'expand(v:val)'))
  let winnr = bufwinnr('^' . command . '$')
  silent! execute  winnr < 0 ? 'botright vnew ' . fnameescape(command) : winnr . 'wincmd w'
  setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap number
  echo 'Execute ' . command . '...'
  silent! execute 'silent %!'. command
  silent! redraw
  silent! execute 'au BufUnload <buffer> execute bufwinnr(' . bufnr('#') . ') . ''wincmd w'''
  silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . command . ''')<CR>'
  echo 'Shell command ' . command . ' executed.'
endfunction
command! -complete=shellcmd -nargs=+ Shell call s:ExecuteInShell(<q-args>)
" }}}

" Arrow key shortcuts {{{
function! DelEmptyLineAbove()
  if line('.') == 1
    return
  endif
  let l:line = getline(line('.') - 1)
  if l:line =~# '^\s*$'
    let l:colsave = col('.')
    .-1d
    "silent normal!
    call cursor(line('.'), l:colsave)
  endif
endfunction
function! AddEmptyLineAbove()
  let l:scrolloffsave = &scrolloff
  " Avoid jerky scrolling with ^E at top of window
  set scrolloff=0
  call append(line('.') - 1, '')
  let &scrolloff = l:scrolloffsave
  endfunction
  function! DelEmptyLineBelow()
  if line('.') == line('$')
    return
  endif
  let l:line = getline(line('.') + 1)
  if l:line =~# '^\s*$'
    let l:colsave = col('.')
    .+1d
    ''
    call cursor(line('.'), l:colsave)
  endif
endfunction
function! AddEmptyLineBelow()
  call append(line('.'), '')
endfunction
nnoremap <Left> <<
nnoremap <Right> >>
nnoremap <Up> :call DelEmptyLineAbove()<CR>
nnoremap <Down> :call AddEmptyLineAbove()<CR>
nnoremap <silent> [g :ALEPreviousWrap<CR>
nnoremap <silent> ]g :ALENextWrap<CR>
nnoremap gf :e<cfile><CR>
" }}}
" Misc mappings {{{
" system clipboard
vnoremap <silent> <C-C> '+y
nnoremap <silent> <C-c> :%y+<CR>
nnoremap <silent> <C-V> '+p
vnoremap <silent> <C-X> '+d
" Navigate buffers with backspace
nnoremap <Backspace> :CtrlSpaceGoUp<CR>
nnoremap <S-Backspace> :CtrlSpaceGoDown<CR>
" Disable ex mode entirely
nmap Q <nop>
" Save command
nnoremap <CR> :wall<CR>
" alias :bdelete to :bc (for buffer-close)
cnoreabbrev bc bdelete

" CoC
nnoremap <silent> cv <Plug>(coc-rename)
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gl <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)

function! ShowDocumentation()
  if !get(g:, 'coc_service_initialized', 0)
    call feedkeys('K', 'in')
  elseif CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
nnoremap <silent> K :call ShowDocumentation()<CR>



" Buffer and ctrlP
command! -bang -nargs=* BLinesExtra
      \ call fzf#vim#grep(
      \ 'rg --with-filename --column --line-number --no-heading . '.fnameescape(expand('%:p')), 1,
      \ fzf#vim#with_preview({'options': '--layout reverse --query '.shellescape(<q-args>).' --with-nth=4.. --delimiter=":"'}, 'right:50%'))
nnoremap <C-/> :BLinesExtra<CR>
" }}}

" MINUS KEYBINDINGS (window manager) {{{
" CTRL-W is too annoying to type, repurpose minus
" ------------------------------------------
nnoremap -h <C-w>h
nnoremap -l <C-w>l
nnoremap -j <C-w>j
nnoremap -k <C-w>k
" split (match nerdtree)
nnoremap -i :split<CR>
" n for new; easier to reach than -v
nnoremap -s :vsplit<CR>
" use WASD-like keys for quickly shoving around windows
" since the minus sign is on the right hand side
nnoremap -o <C-w>H
nnoremap -u <C-w>L
nnoremap -. <C-w>K
nnoremap -e <C-w>J
" maximize window
nnoremap -a <C-w>o
nnoremap <silent> -f <C-w>v:CtrlPRoot<CR>
nnoremap <silent> -r <C-w>v:CtrlPMRU<CR>
nnoremap <silent> -c <C-w>v:CtrlPCurFile<CR>
nnoremap <silent> -b <C-w>v:CtrlPBuffer<CR>
nnoremap -w <C-w><C-w>

nnoremap <silent> <ESC><ESC> :nohlsearch \| match none \| 2match none \| call coc#float#close_all()<CR>
" make notes
" https://www.gilesorr.com/blog/vim-tips-23-scratch-buffer.html
function NewScratch()
  split scratch-buffer.mkd
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
endfunction
nnoremap <silent> -z :call NewScratch()<CR>
" }}}
" SPACE BAR KEYBINDINGS {{{
" Not setting leader key because otherwise extensions mess with me
" ALE Details
nnoremap <Space>a :ALEDetail<CR>
" Jump to definition in tags
function TagJump()
  let word = expand('<cword>')
  vsplit
  try
    exec('tjump ' . l:word)
  catch
    echo l:word . ' not found'
    close
  endtry
endfunction
nnoremap <Space>d :call TagJump()<CR>
" show syntax group
nnoremap <Space>y :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
" e is for emulator
nnoremap <Space>e :let $VIM_DIR=expand('%:p:h')<CR>:silent !xfce4-terminal --working-directory="$VIM_DIR" &<CR>:redraw!<CR>
" fold by indent
nnoremap <Space>z :set foldmethod=indent<CR>
" NerdTree
nnoremap <silent> <Space>t :NERDTreeFocus<CR>
" smart find and replace
nnoremap <silent> <Space>h :Farr<CR>
" Start up CoC
nnoremap <silent> <Space>c :call CocStartAndDisableALELSP()<CR>

nnoremap <silent> <Space>w :set wrap<CR>
nnoremap <silent> <Space>n :set nowrap<CR>

" Ctrl P
nnoremap <silent> <Space>f :CtrlPRoot<CR>
nnoremap <silent> <Space>r :CtrlPMRU<CR>
nnoremap <silent> <Space>p :CtrlPCurFile<CR>
nnoremap <silent> <Space>b :CtrlPBuffer<CR>

" git status
nnoremap <Space>gg :Git<CR>
nnoremap <Space>gb :Git blame<CR>
nnoremap <Space>gd :Gdiffsplit<CR>
nnoremap <Space>g<CR> :Gwrite<CR>
" git commit
nnoremap <Space>gc :Git commit<CR>
" git commit (current file)
nnoremap <Space>gw :Git commit %<CR>
" git commit all
nnoremap <Space>ga :Git commit --all<CR>
" git create commit --amend [edit commit]
nnoremap <Space>gC :Git commit --amend<CR>
" git commit --amend current file [edit write]
nnoremap <Space>gW :Git commit % --amend<CR>
" git commit --amend all [edit all]
nnoremap <Space>gA :Git commit --all --amend<CR>
" git undo (really git read)
nnoremap <Space>gu :Gread<CR>

" Smart window close replacement for :q
function! EvanClose()
  if (winnr('$') == 1 || (winnr('$') == 2 && winnr() == 2 && bufname('^NERD_tree') !=# ''))
    if tabpagenr('$') == 1
      bdelete
      if expand('%:p') ==# ''
        quit
      endif
    else
      bdelete
    endif
  elseif expand('%:l') ==# '__doc__'
    bdelete
  else
    close
  endif
endfunction
nnoremap <Space>- :call EvanClose()<CR>
" }}}

" Settings {{{
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

set backspace=indent,eol,start
set backup     " keep a backup file
set breakindent
"set colorcolumn=+1
set cryptmethod=blowfish2
set completeopt=menuone,noselect,preview
set conceallevel=2
set cursorline
set cursorlineopt=number
set expandtab " :(
set foldlevelstart=3
set guicursor+=n-v-c:blinkon0
set guifont=Monospace\ 11
set hidden
set history=50 " keep 50 lines of command line history
set hlsearch
set ignorecase
set incsearch  " do incremental searching
set laststatus=2
set linebreak
set list
set listchars=tab:\|\ ,trail:_
set mouse=a    " mouse enabled
set noautoindent
set nohlsearch
set noshowmode " don't need mode shown if we have airline
set nowrap
set number
set omnifunc=ale#completion#OmniFunc
set ruler      " show the cursor position all the time
set runtimepath+=/usr/local/lilypond/usr/share/lilypond/current/vim/
set scrolloff=5
set shell=/bin/fish
set shellslash
set shiftwidth=2
set shortmess=aItT
set showbreak=_
set showcmd    " display incomplete commands
set smartcase
set spell
set splitright
set t_Co=256 " number of colors
set tabstop=2
set textwidth=80 " default textwidth = 80
set updatetime=100
set wrapmargin=0

" }}}
" {{{ Auto commands
function! DetectIndentIfNoLocalRC()
  if !exists('g:loaded_localrc')
    DetectIndent
  endif
endfunction
" ------------------------------------------
augroup vimrc
  autocmd!
augroup END
autocmd vimrc BufNewFile,BufRead *.asy setfiletype asy
autocmd vimrc BufNewFile,BufRead *.lean setfiletype lean
autocmd vimrc BufNewFile,BufRead *.ly setfiletype lilypond
autocmd vimrc BufNewFile,BufRead *.less setfiletype css
autocmd vimrc BufNewFile,BufRead *.ics setfiletype icalendar
autocmd vimrc BufNewFile,BufRead *.pegjs setfiletype pegjs
autocmd vimrc BufNewFile,BufRead *.tex syntax spell toplevel
autocmd vimrc BufNewFile,BufRead *.tsq setfiletype tsq
autocmd vimrc BufNewFile,BufRead *.tsqx setfiletype tsqx
autocmd vimrc User AirlineAfterTheme call AirlineSetup()
autocmd vimrc BufRead * call DetectIndentIfNoLocalRC()
autocmd vimrc BufNewFile,BufRead *.tex set spell
autocmd vimrc VimEnter .git/COMMIT_EDITMSG set filetype=gitcommit
" }}}
" More lame LaTeX stuff {{{
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_GotoError = 1
let g:Tex_Leader2='\\'
let g:Tex_SmartKeyDot = 0
let g:Tex_SmartKeyQuote = 0
let g:Tex_ViewRule_pdf = 'zathura'
let g:Tex_comment_nospell= 1
let g:tex_flavor='latex'
function! SyncTexForward()
  exec 'silent !zathura --synctex-forward '.line('.').':'.col('.').':%:p %:p:r.pdf &'
endfunction
let g:tex_conceal='agms'
let g:xml_syntax_folding=1
" Leader keys that are forced on me by LaTeX
" <Leader>ll -> pdflatex compile
" <Leader>lv -> latex viewer
" <Leader>rf -> refresh folds (LaTeX)
" }}}

" vim: ft=vim fdm=marker


" Compiling shortcuts

" autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
" autocmd bufnewfile *.cpp exe "1," . 10 . "g/created:.*/s//created: " .strftime("%d-%m-%Y")


autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'shellescape('%:r')<CR>
