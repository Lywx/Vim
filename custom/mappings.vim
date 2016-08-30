" Leader key
let mapleader = "\<Space>"

" Auto Center {{{

" Diff Auto Center
nmap ]c ]czz
nmap [c [czz

" Find and jump auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"}}}
" Functional Keys {{{

" Paste (automatic modification) toggle on or off
set pastetoggle=<F2>

noremap <F3> :NERDTreeToggle<cr>
noremap <F4> :TagbarToggle<cr>
noremap <F5> :ConqueTermSplit zsh<cr>

"}}}
" Motion {{{

" Support code moving
no <up> ddkP
no <down> ddp

" Unmap arrow keys
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

" Insert empty line
nnoremap <silent> <space>k :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
nnoremap <silent> <space>j :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>

" Sane Backspace
set backspace=indent,eol,start

" }}}

" Sessions {{{

" Remove highlight of last search
nnoremap <c-.> :nohl<cr>
vnoremap <c-.> :nohl<cr>

" Quick Save
nnoremap <c-s> :update<cr>

" Quick Exit
nnoremap <c-x> :quit<cr>
nnoremap <leader>x :qa!<cr>

" }}}
" Tabs {{{"{{{

" Switch Tab
no <c-u> :tabprevious<cr>
no <c-i> :tabnext<cr>

" Move Tab
no <c-y> :tabmove -1<cr>
no <c-o> :tabmove +1<cr>

" Create Tab
no <c-n> :tabnew<cr>

" Open in New Tab
map <c-\> :tab split<cr>:exec("tag ".expand("<cword>"))<cr>

" }}}
" Windows {{{

" Windows Switch
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Windows Swap
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>

" }}}"}}}
" Blocks {{{

" Sort methods in block
nnoremap <leader>s :sort<cr>

" Easier block indentation
vnoremap < <gv
vnoremap > >gv

" Easier formating of paragraph
vmap <leader>P gq
nmap <leader>P gqap

" }}}

" Easy Motion {{{

map f <Plug>(easymotion-fl)
map F <Plug>(easymotion-Fl)
map t <Plug>(easymotion-tl)
map T <Plug>(easymotion-Tl)

" N characters searching
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

" }}}

" Auto Format {{{

nmap <leader>= :Autoformat<cr>

" }}}
" Auto Align {{{

vmap <leader>= <Plug>(EasyAlign)

" }}}

" Python-mode {{{

" let g:pymode_breakpoint_key             = '<leader>pb'

" let g:pymode_doc_key                    = 'K'
" let g:pymode_rope_show_doc_bind         = '<leader>K'

" let g:pymode_run_bind                   = '<leader>prs'

" let g:pymode_rope_autoimport_bind       = '<leader>pai'
" let g:pymode_rope_organize_imports_bind = '<leader>poi'

" let g:pymode_rope_goto_definition_bind  = '<leader>pg'
" let g:pymode_rope_rename_bind           = '<leader>prr'
" let g:pymode_rope_rename_module_bind    = '<leader>prm'

" }}}
