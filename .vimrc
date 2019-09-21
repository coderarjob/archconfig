" .vimrc file
" Author: Arjob Mukerjee (mukherjeearjob@gmail.com)
" TODO: javacomplete not working.

set nocompatible
" filetype plugin on

" setup encoding
set encoding=UTF-8

" enables numbers and relative numbering
set number	
" set relativenumber 

" 1 Tab key inserts 4 spaces
set tabstop=4 
autocmd FileType asm set tabstop=4

" Number of spaces that autoindent will use
set shiftwidth=4

" Wrap text settings
set textwidth=79
set formatoptions+=t " autowraps using textwidth
" set formatoptions-=l " wraps long lines when insert mode begins them.

" 80 charecters
set colorcolumn=80

" ignore case when searching
set ignorecase

" Indentation to use
set autoindent		" copies the indentation of the current line to the next lilne.
set noexpandtab		" do not expand tab to spaces
set smartindent		" auto indents after {, } etc.

" enable syntax hilighting
syntax enable

" Enables 256 color and set default colorschemes
set t_Co=256
set background=dark
colorscheme pablo "gruvbox

" Only for Solarized colorscheme

" colorscheme solarized
" let g:solarized_termcolors=256
" let g:solarized_contrast="high"

highlight TabLineFill ctermfg=black
highlight TabLine ctermfg=darkgrey ctermbg=grey
highlight TabLineSel ctermfg=darkblue ctermbg=white

" for 'find' to searh in the current folder and its sub-directories
" ** in the following line means to search the current folder and its
" subdirctories as well.
set path=.,**

" tab complete for commands.
set wildmenu

" show status line always
set laststatus=2	" 2 means always, see help

" show commands as I type them, at the bottom right corner
set showcmd

" set font
" If neovim then we do a little different.
if !has('nvim')
	set guifont=MonacoBSemi\ 9
endif

" hide menu and toolbar in gvim
" set guioptions -=T " hides toolbar
" set guioptions -=m " hides menubar

" snippets
nnoremap ,cstd :-1read $HOME/.vim/.cstd.c<CR>2ji
nnoremap ,sock :-1read $HOME/.vim/.sock.h<CR>8j
nnoremap ,p :-1read /home/coder/.vim/.printf.c<CR>f(a
nnoremap ,cl :-1read /home/coder/.vim/componentListener.java<CR>4jA

" build
nnoremap <f5> :!make<cr>
autocmd filetype asm nnoremap <f5> :!sh ../build.sh<cr>

" Force filetype on .inc files
autocmd filetype pov set filetype=asm
" autocmd filetype .inc set filetype=asm

" Window handling shortcuts
nnoremap <C-_> <C-W>_
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

" Open horizontal and vertical windows
nnoremap wh :new<cr>
nnoremap wv :vne<cr> 
nnoremap wc :close<cr>

nnoremap tn	:tabnew<cr> 
nnoremap tc	:tabclose<cr>
nnoremap tl	:tabnext<cr>
nnoremap th	:tabprevious<cr>
nnoremap t1 :tabfirst<cr>
nnoremap tt :tablast<cr>

" source ~/.vim/ftdetect/markdown.vim
" source ~/.vim/indent/markdown.vim
" omnifunc
" javacomplete url: https://www.vim.org/scripts/script.php?script_id=1785
" ccomplete is not installed yet

autocmd FileType java set omnifunc=javacomplete#Complete
" setlocal omnifunc=javacomplete#Complete
" autocmd FileType c set omnifunc=ccomplete#Complete 
