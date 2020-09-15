call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'hecal3/vim-leader-guide'

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

Plug 'Shougo/denite.nvim'

Plug 'francoiscabrol/ranger.vim' | Plug 'rbgrouleff/bclose.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'alvan/vim-closetag'

Plug 'janko-m/vim-test'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

Plug 'othree/csscomplete.vim'

Plug 'elixir-editors/vim-elixir'

Plug 'tpope/vim-endwise'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'benmills/vimux'

Plug 'chase/vim-ansible-yaml'

Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'

Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

Plug 'jparise/vim-graphql'

" Initialize plugin system
call plug#end()
