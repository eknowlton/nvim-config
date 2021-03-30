set exrc
set secure

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
set splitbelow
set splitright

autocmd FileType crontab setlocal nobackup nowritebackup
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType zsh setlocal ts=2 sts=2 sw=2
autocmd FileType sh setlocal ts=2 sts=2 sw=2
autocmd FileType c setlocal ts=4 sts=4 sw=4
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript.tsx setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType php setlocal ts=4 sts=4 sw=4
autocmd FileType ccpp setlocal ts=4 sts=4 sw=4
autocmd FileType xml setlocal ts=2 sts=2 sw=2

autocmd VimEnter *.jrnl $pu=strftime('%n# %a, %d %b %Y %T %z%n%n')
autocmd FileType json syntax match Comment +\/\/.\+$+

au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=ansible

autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

autocmd BufEnter *.tsx set filetype=typescript.jsx
autocmd BufEnter *.jsx set filetype=javascript.jsx

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
let g:prettier#exec_cmd_path = "/home/ethan/.asdf/shims/prettier"

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

inoremap jk <Esc>
tnoremap <Esc> <C-\><C-n>

set clipboard+=unnamedplus

" Use tag to trigger completion
inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
        if (index(['vim', 'help'], &filetype) >= 0)
                execute 'h '.expand('<cword>')
        else
                call CocAction('doHover')
        endif
endfunction

" use `:OR` for organize import of the current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb,*.tsx'

let test#strategy = "shtuff"
let g:shtuff_receiver = 'devrunner'

command! MyGF call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --cached --others'}))

let g:fzf_layout = { 'window': 'enew' }

let g:airline_powerline_fonts = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

set secure
set mouse=a
