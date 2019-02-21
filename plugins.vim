call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'hecal3/vim-leader-guide'

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

Plug 'Shougo/denite.nvim'
Plug 'kien/ctrlp.vim'

Plug 'w0rp/ale'

Plug 'francoiscabrol/ranger.vim' | Plug 'rbgrouleff/bclose.vim'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

Plug 'alvan/vim-closetag'

Plug 'kassio/neoterm'
Plug 'janko-m/vim-test'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

Plug 'othree/csscomplete.vim'

Plug 'elixir-editors/vim-elixir'

Plug 'tpope/vim-endwise'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

