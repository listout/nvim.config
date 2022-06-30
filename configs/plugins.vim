if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'shaunsingh/nord.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ap/vim-css-color'

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'dhruvasagar/vim-table-mode', { 'for': ['markdown', 'markdown.pandoc'] }

Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'

Plug 'junegunn/goyo.vim', { 'for': ['markdown', 'markdown.pandoc', 'latex', 'tex', 'c'] }
Plug 'junegunn/limelight.vim', { 'for': ['markdown', 'markdown.pandoc', 'latex', 'tex'] }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

"Plug 'sheerun/vim-polyglot'
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': ['markdown', 'markdown.pandoc']}
Plug 'lervag/vimtex', {'for': 'tex'}

if &diff
else
Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif
Plug 'tpope/vim-fugitive', {'for': ['cpp', 'c']}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()
