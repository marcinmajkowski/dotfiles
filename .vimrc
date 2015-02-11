" This is Marcin Majkowski's .vimrc file

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Execute pathogen.vim
execute pathogen#infect()

syntax on		" Enable highlighting for syntax

" Set summerfruit256 colorscheme
set t_Co=256  " make use of 256 terminal colors
color summerfruit256

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" I'm testing this:
au filetype cpp set expandtab
au filetype cpp set tabstop=4
au filetype cpp set shiftwidth=4
au filetype cpp set softtabstop=4
au filetype c set expandtab
au filetype c set tabstop=4
au filetype c set shiftwidth=4
au filetype c set softtabstop=4

" Make double-<CR> clear search highlights
nnoremap <silent> <CR> :nohlsearch<CR>

set history=10000
set number
set autoindent
set hlsearch
set nowrap

" Odsuniecie aktualnie edytowanej linii od krawedzi okna
set scrolloff=3

" Podswietlenie aktualnej linii
set cursorline

" Po wcieciu zaznaczenia, zaznaczenie pozostaje:
vnoremap < <gv
vnoremap > >gv

" Kompilowanie i uruchamianie programow C++:
" nnoremap <F7> :w<CR>:make<CR>
au filetype cpp noremap <F7> :!clear && make<CR>
au filetype cpp noremap <C-F7> :w<CR>:!clear && g++ % -o %:r -g -Wall -pedantic -std=c++11<CR>
au filetype cpp noremap <F5> :!./%:r<CR>
au filetype cpp noremap <C-F5> :!./%:r<input<CR>
au filetype cpp noremap! <F7> <Esc>:!clear && make<CR>
au filetype cpp noremap! <C-F7> <Esc>:w<CR>:!clear && g++ % -o %:r -g -Wall -pedantic -std=c++11<CR>
au filetype cpp noremap! <F5> <Esc>:!./%:r<CR>
au filetype cpp noremap! <C-F5> <Esc>:!./%:r<input<CR>
au filetype c noremap <F7> :!clear && make<CR>
au filetype c noremap <C-F7> :w<CR>:!clear && cc % -o %:r -g -Wall -pedantic -std=c99<CR>
au filetype c noremap <F5> :!./%:r<CR>
au filetype c noremap <C-F5> :!./%:r<input<CR>
au filetype c noremap! <F7> <Esc>:!clear && make<CR>
au filetype c noremap! <C-F7> <Esc>:w<CR>:!clear && cc % -o %:r -g -Wall -pedantic -std=c99<CR>
au filetype c noremap! <F5> <Esc>:!./%:r<CR>
au filetype c noremap! <C-F5> <Esc>:!./%:r<input<CR>

" Domykanie { w C/C++
au filetype cpp inoremap {<CR> {<CR><Tab><Esc>A<CR><BS>}<Up><Esc>A
au filetype c inoremap {<CR> {<CR><Tab><Esc>A<CR><BS>}<Up><Esc>A
set wildmode=longest,list
set wildmenu
let mapleader=","
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move a line of text using ALT+[jk] (xterm)
nmap ĂŞ mz:m+<cr>`z
nmap Ă« mz:m-2<cr>`z
vmap ĂŞ :m'>+<cr>`<my`>mzgv`yo`z
vmap Ă« :m'<-2<cr>`>my`<mzgv`yo`z

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Alt-o/O to add a blank line (xterm)
if has('gui_running')
    " the following two lines do not work in vim, but work in Gvim
    nnoremap <silent>ĂŻ :set paste<CR>m`o<Esc>``:set nopaste<CR>
    nnoremap <silent>ĂŹ :set paste<CR>m`O<Esc>``:set nopaste<CR>
else
    " these two work in vim
    " shrtcut with alt key: press Ctrl-v then Alt-o
    " ATTENTION: the following two lines should not be 
    " edited under other editors like gedit. ^[k and ^[j will be broken!
    " nnoremap ĂŻ :set paste<CR>m`o<Esc>``:set nopaste<CR>
    " nnoremap ĂŹ :set paste<CR>m`O<Esc>``:set nopaste<CR>
    nnoremap ĂŻ o<Esc>
    nnoremap ĂŹ O<Esc>
endif
