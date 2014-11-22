" Show whitespace
" Must be before colorscheme
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Automatically delete trailing whitespace
autocmd BufWritePre *.py :%s/\s\+$//e
