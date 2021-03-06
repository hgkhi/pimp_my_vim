" Plugin related
" --------------
" Initialize pathogen
execute pathogen#infect()

" Toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" NERDTree change current directory to the current file
autocmd BufEnter * lcd %:p:h

" ctrlp config
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Ctags configuration
let g:tagbar_ctags_bin='/usr/local/bin/ctags'

" Tagbar setting
let g:tagbar_width=30
noremap <C-j> :TagbarToggle<CR>

" Vim setting
" -----------

" Set indentation default length
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Specific indentation for filetypes
autocmd FileType text set tabstop=2 shiftwidth=2 softtabstop=2 tw=80

" Shows the columns number
set ruler

" Display file path on status bar
set statusline+=%F

" jj is now escape
inoremap jj <ESC>

" Set encoding
set fileencodings=utf-8,euc-jp
set fileformats=unix,dos,mac

" Set ignore case-sensitive
set ic

" Auto indent after newline
imap <C-Return> <CR><CR><C-o>k<Tab>

" Enable autoindent
set autoindent

" Display indent guide
" set list lcs=tab:\|\ 

" NERDTree's width
let g:NERDTreeWinSize=40

" Show hidden files
let NERDTreeShowHidden=1

" Set map leader
let mapleader = ","

" Syntax enable
syntax enable

" Set no line breaking
set nowrap

" Enable filetype plugin
filetype plugin on

" Set line number
set number

" Highlight current line
set cursorline

" Load filetype-specific indent file
filetype indent on

" Display possible choices
set wildmenu

" Redraw whenever we need to
set lazyredraw

" Highlighting paratheses match
set showmatch

" Search as characters are being entered
set incsearch

" Highlight matches
set hlsearch

" Set ruler
let &colorcolumn="81,".join(range(121,999),",")

" Set colorscheme
colorscheme solarized

" Set Airline theme
let g:airline_theme='solarized'

" Set dark/light background
set background=dark

" Resolve the issue about backspace
set backspace=indent,eol,start

" Shortcuts!
" ----------

" Horizontal scroll
map <C-L> 40zl
map <C-H> 40zh

" Splits and Tabs navigation
nnoremap gh <C-w>h
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gl <C-w>l
nnoremap gR <C-w>T
nnoremap gL <C-w>L
nnoremap gH <C-w>H
nnoremap g= <C-w>=

" Tab navigation
nnoremap tj  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tk  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap tn  :tabnew<CR>
nnoremap tx  :tabclose<CR>

" Toggle paste and no paste
noremap<C-o>p : set paste<CR>
noremap<C-o>n : set nopaste<CR>

" Quick run/compile
nnoremap fc  :!clear && cc -Wall % && ./a.out && rm a.out<CR>
nnoremap f+  :!clear && g++ -std=c++11 -Wall % && ./a.out && rm a.out<CR>
nnoremap fp  :!clear && python3 %<CR>
nnoremap fh  :!clear && php %<CR>
nnoremap fn  :!clear && node %<CR>

" Underline
inoremap <F1> <Esc>yyp<c-v>$r=A
inoremap <F2> <Esc>yyp<c-v>$r-A
inoremap <F3> <Esc>yyp<c-v>$r~A
inoremap <F4> <Esc>yyp<c-v>$r_A
