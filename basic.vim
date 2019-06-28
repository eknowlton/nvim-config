set exrc

set encoding=UTF-8

colorscheme brogrammer

set number
set relativenumber
set cursorline
set undofile
set autoread
set expandtab
set smartindent
set nocompatible

autocmd FileType crontab setlocal nobackup nowritebackup
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType sh setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript.tsx setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType php setlocal ts=4 sts=4 sw=4
autocmd FileType cpp setlocal ts=4 sts=4 sw=4
autocmd VimEnter *.jrnl $pu=strftime('%n# %a, %d %b %Y %T %z%n%n')

au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=ansible

inoremap jk <Esc>
tnoremap <Esc> <C-\><C-n>

set clipboard+=unnamedplus

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

let g:ale_set_highlights = 0

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['prettier'],
\ 'typescript': ['prettier'],
\ 'typescript.jsx': ['prettier'],
\ 'sh': ['shfmt'],
\ 'ruby': ['standardrb'],
\ 'go': ['gofmt'],
\ 'yaml': ['prettier'],
\ 'css': ['prettier'],
\ 'json': ['prettier'],
\ 'html': ['prettier'],
\ 'rust': ['rustfmt'],
\}

let g:ale_linters = {
\ 'typescript': ['eslint', 'tslint', 'tsserver', 'typecheck'],
\ 'typescript.tsx': ['eslint', 'tslint', 'tsserver', 'typecheck'],
\ 'ruby': ['standardrb', 'rails_best_practices', 'brakeman', 'reek', 'solargraph'],
\ 'go': ['gofmt', 'govet', 'golint', 'golangserver'],
\ 'rust': ['cargo', 'rls']
\ }

let g:ale_rust_rls_toolchain = 'stable-x86_64-unknown-linux-gnu'

let g:airline#extensions#ale#enabled = 1

let g:ale_sign_error = ''
let g:ale_sign_warning = ''
highlight ALEErrorSign ctermbg=236 ctermfg=red
highlight ALEWarningSign ctermbg=236 ctermfg=yellow

let g:ale_php_langserver_use_global = 1
let g:ale_php_langserver_executable = $HOME.'/.composer/vendor/bin/php-language-server.php'

let g:ale_fix_on_save = 1
let g:ale_set_balloons = 1

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb,*.tsx'

let test#strategy = "vimux"

command! MyGF call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --cached --others'}))

let g:airline_powerline_fonts = 1

set secure
set mouse=a
