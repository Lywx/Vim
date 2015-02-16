set nocompatible


" IO options
set nobackup nowritebackup noswapfile                                          " no backup or swap at save
set autoread                                                                   " auto reload when file changed
set hidden                                                                     " don't unload buffer when switching away


" Undo history
set history=700
set undolevels=700
if version > 720
	set undofile
	set undodir=~/vimundo/
endif


" File formatting
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8                       " saving and encoding
set fileformats=unix


" Tab and spaces
set tabstop=4                                                                  " insert 4 spaces for a tab
set softtabstop=4                                                              " insert 4 spaces for a mixed tab
set shiftwidth=4                                                               " insert 4 spaces for intentation
set shiftround                                                                 " round (align) tab
set expandtab                                                                  " insert spaces by tab char
set smartindent


" Search
set hlsearch incsearch ignorecase smartcase                                    " case-insensitive search


" Fold
set foldmethod=marker
set foldcolumn=1


" Completion
set wildmenu                                                                   " enhanced completion


" Clipboard
set clipboard=unnamed,unnamedplus                                              " use the system clipboard for yank/put/delete


" Enable mouse for all modes
set mouse=a


" Don't hide the mouse cursor while typing
set nomousehide


set showcmd
set cmdheight=2


" Always show status bar
set laststatus=2


" No alt shortcuts
set winaltkeys=no


" 256 colors
set t_Co=256


" Syntax highlighting
syntax on


" Show line number
set number
set relativenumber
" Show cursor position in status bar
set ruler


" Show whitespace
"set list listchars=tab:› ,trail:-,extends:>,precedes:<,eol:¬
set list listchars=tab:› ,trail:-,extends:>,precedes:<


" Wrap
set nowrap
if &diff
	set wrap
endif
" Don't automatically wrap text when typing
set fo-=t


" Display region
set colorcolumn=80
set linespace=0
" Length of document
set textwidth=80
" Scroll the window so we can always see 10 lines around the cursor
set scrolloff=10


" Highlight the current row
set cursorline
" Highlight the current column
" set cursorcolumn


" Tags
"set tags=~/.vim/tags/tags
