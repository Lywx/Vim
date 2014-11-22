" Leader key
let mapleader = "\<Space>"


" Unmap arrow keys and support code moving
no <up> ddkP
no <down> ddp
no <left> <nop>
no <right> <nop>
ino <up> <nop>
ino <down> <nop>
ino <left> <nop>
ino <right> <nop>
vno <up> <nop>
vno <down> <nop>
vno <left> <nop>
vno <right> <nop>


" Tab switch
no <leader>, :tabprevious<cr>
no <leader>. :tabnext<cr>
no <leader>n :tabnew<cr>


" Functional keys"{{{

" Paste (automatic modification) toggle on or off
set pastetoggle=<F2>

nnoremap <F3> :NERDTreeToggle<cr>

"}}}
" Jump auto-center"{{{

" Diff auto-center
nmap ]c ]czz
nmap [c [czz


" Find and jump auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"}}}


" Insert empty line
nnoremap <silent> <space>k :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
nnoremap <silent> <space>j :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>


" Sane backspace
set backspace=indent,eol,start


" Remove highlight of last search
nnoremap <c-n> :nohl<cr>
vnoremap <c-n> :nohl<cr>


" Quicksave
nnoremap <c-z> :update<cr>


" Quick quit
nnoremap <leader>e :quit<cr>
nnoremap <leader>E :qa!<cr>


" Windows switch
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


" Sort methods in block
nnoremap <leader>s :sort<cr>


" Autoformat
nmap <leader>= :Autoformat<cr>


" Align
vmap <leader>= <Plug>(EasyAlign)


" Easier block indentation
vnoremap < <gv
vnoremap > >gv


" Easier formating of paragraph
vmap Q gq
nmap Q gqap


" EasyMotition, Dot Repeat
map f <Plug>(easymotion-fl)
map F <Plug>(easymotion-Fl)
map t <Plug>(easymotion-tl)
map T <Plug>(easymotion-Tl)

" Two character bidirectional with operation repeat
nmap <leader>d <Plug>(easymotion-s2)
omap <leader>d <Plug>(easymotion-s2)

" N characters searching
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)


" Open tag in new tab
map <c-\> :tab split<cr>:exec("tag ".expand("<cword>"))<cr>
