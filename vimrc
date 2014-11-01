""""""""""""""""""""""""""""""""""""""""""
" Environment Configuration
""""""""""""""""""""""""""""""""""""""""""
set nocompatible

" Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Undo History
set history=700
set undolevels=700

" File encoding
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8  " saving and encoding

" Tab and spaces
set tabstop=4                                             " insert 4 spaces for a tab
set softtabstop=4                                         " insert 4 spaces for a mixed tab
set shiftwidth=4                                          " insert 4 spaces for intentation
set shiftround                                            " round (align) tab
set expandtab                                             " insert spaces by tab char
set smartindent

" Search
set hlsearch incsearch ignorecase smartcase               " case-insensitive search

" Completion
set wildmenu                                              " enhanced completion

" Layout
" set nofoldenable                                          " no code folding

" Clipboard integration with system
set pastetoggle=<F2>                                      " paste (automatic modification) toggle on or off
set clipboard=unnamed,unnamedplus                         " use the system clipboard for yank/put/delete

" Vim configuration
autocmd! bufwritepost .vimrc source %                     " automatic reload vimrc on save
set secure                                                " disable unsafe commands in local .vimrc files
set modeline                                              " allow per-file settings via modeline

" Vim file IO
set nobackup nowritebackup noswapfile                     " no backup or swap at save
set autoread                                              " auto reload when file changed
set hidden                                                " don't unload buffer when switching away

" Others
set printoptions=paper:letter                             " use letter as the print output format

""""""""""""""""""""""""""""""""""""""""""
" Control Configuration
""""""""""""""""""""""""""""""""""""""""""

let mapleader = ","                                       " rebind <Leader> to comma

" Space to insert empty line
nnoremap <silent> <space>k :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
nnoremap <silent> <space>j :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>

" Backspace 
set backspace=indent,eol,start                            " sane backspace

" Remove highlight of last search
nnoremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>

" Quicksave
nnoremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C> :update<CR>
inoremap <C-Z> <C-O> :update<CR>

" Quick quit
nnoremap <Leader>e :quit<CR>
nnoremap <Leader>E :qa!<CR>

" Bind ctrl+<movement> to move windows around
map <C-j> <C-w>j                                          
map <C-k> <C-w>k                                          
map <C-h> <C-w>h                                          
map <C-l> <C-w>l                                          

" Easier tab movement
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>  

" Sort methods in block
map <Leader>s :sort<CR>

" Easier block indentation
vnoremap < <gv                          
vnoremap > >gv                                            

" Automatically delete trailing whitespace
autocmd BufWritePre *.py :%s/\s\+$//e

" Easier formating of paragraph
vmap Q gq
nmap Q gqap

""""""""""""""""""""""""""""""""""""""""""
" Display Configuration
""""""""""""""""""""""""""""""""""""""""""

" Show whitespace
" Must be before Colorscheme, see http://vim.wikia.com/wiki/Highlight_unwanted_spaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Colorscheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=1340
set t_Co=256                                              " 256 color support
color wombat256mod

" Syntax highlighting
filetype off
filetype plugin indent on
syntax on

" Show line number
set number                                                " show line numbers
set relativenumber                                        " relative line number for fast goto line
set ruler                                                 " show cursor position in status bar
set nowrap                                                " don't automatically wrap on load
set fo-=t                                                 " don't automatically wrap text when typing

" Document display region
set colorcolumn=80
" highlight ColorColumn ctermbg=233                         " dark color for max length
set textwidth=80                                          " length of document
set scrolloff=10                                          " scroll the window so we can always see 10 lines around the cursor

" Better positioning
set cursorline                                            " highlight the current line
set cursorcolumn                                          " highlight the current line

" Mouse positioning
set mouse=a                                               " enable mouse for all modes settings
set mousemodel=popup                                      " right-click pops up context menu
set nomousehide                                           " don't hide the mouse cursor while typing

" Better menu and editor indication
set laststatus=2                                          " always show status bar

" Clean GUI display
set guioptions-=T                                         " turn off GUI toolbar (icons)
set guioptions-=r                                         " turn off GUI right scrollbar
set guioptions-=L                                         " turn off GUI left scrollbar
set winaltkeys=no                                         " turn off stupid fucking alt shortcuts

"""""""""""""""""""""""""""""""""""""""""
" Vundle Configuration
"""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'gmarik/Vundle.vim'

" Git integration
Plugin 'tpope/vim-fugitive'

" Workflow
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
"Plugin 'junegunn/fzf'

" Scala interaction
Plugin 'megaannum/self'                                   " vimside
Plugin 'megaannum/forms'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/vimshell'
Plugin 'aemoncannon/ensime'                               " ensime server
Plugin 'megaannum/vimside'

" Python integration
Plugin 'klen/python-mode'

call vundle#end()
