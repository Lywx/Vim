" Python Mode

let g:pymode_doc = 1
let g:pymode_motion = 1
let g:pymode_lint = 1
let g:pymode_lint_checker = ['pyflakes', 'pep8']
let g:pymode_rope = 1
let g:pymode_rope_goto_definition_cmd = 'new'

" Pylint check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1

" Syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
