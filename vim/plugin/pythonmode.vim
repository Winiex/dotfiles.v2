"Set checkers
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_on_write = 1
let g:pymode_lint_unmodified = 1

" Auto check on save
let g:pymode_lint_write = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Color bar
autocmd BufRead *.py setlocal colorcolumn=80
hi ColorColumn ctermbg=88

" Disable rope
"let g:pymode_rope = 0

" Disable pydoc
"let g:pymode_doc = 0
