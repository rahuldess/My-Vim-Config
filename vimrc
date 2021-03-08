syntax on

filetype plugin indent on
filetype indent on
filetype on           " Enable filetype detection
filetype plugin on    " Enable filetype-specific plugins

" Keep Plug commands between plug#begin() and plug#end().
call plug#begin()
  Plug 'vim-ruby/vim-ruby'       		" Ruby plugin
  Plug 'nikolalsvk/vim-rails'       " Rails plugin
  Plug 'pangloss/vim-javascript'    " JavaScript support
  Plug 'leafgarland/typescript-vim' " TypeScript syntax
  Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
  Plug 'jparise/vim-graphql'        " GraphQL syntax

  Plug 'janko/vim-test'             			" Run Ruby and Elixir tests
  Plug 'altercation/vim-colors-solarized' " Solarized ColorScheme 
  Plug 'easymotion/vim-easymotion' 				
  Plug 'tpope/vim-sensible'								

  Plug 'kien/ctrlp.vim'             " File finder 
	Plug 'vim-syntastic/syntastic'		" Check Syntax
	Plug 'rking/ag.vim'               " Silver Searcher
	Plug 'preservim/nerdtree'         " NERDTree 
  Plug 'airblade/vim-gitgutter'     " Show git diff of lines edited
  Plug 'tpope/vim-fugitive'         " :Gblame
  Plug 'tpope/vim-endwise'          " Autocomplete end after a do
  Plug 'styled-components/vim-styled-components'
  Plug 'vim-airline/vim-airline'    " Vim powerline
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" -------------------------------------------------------------------------
"  VSCode like for TypeScript
" -------------------------------------------------------------------------
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ---------------------------------------------------------------------------
"  Colors / Theme
"  ---------------------------------------------------------------------------
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" ----------------------------------------------------------------------------
" Backups
"  ----------------------------------------------------------------------------
set nobackup                           " do not keep backups after close
set nowritebackup                      " do not keep a backup while working
set noswapfile                         " don't keep swp files either
set backupdir=$HOME/.vim/backup        " store backups under ~/.vim/backup
set backupcopy=yes                     " keep attributes of original file
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/.vim/swap,~/tmp,.      " keep swp files under ~/.vim/swap

" ----------------------------------------------------------------------------
" UI
"  ----------------------------------------------------------------------------
set number 								 " Enable line numbers
set relativenumber 				 " Enable relative line numbers
set tabstop=2 shiftwidth=2 " Make tabs as wide as two spaces
set backspace=2
set laststatus=2					 " Always show status line

" ----------------------------------------------------------------------------
" Text Formatting
"  ----------------------------------------------------------------------------
set smartindent " indentation based of filetype
set autoindent  " automatic indent new lines
set binary      " Don’t add empty newlines at the end of files

" ---------------------------------------------------------------------------
" General
"  ---------------------------------------------------------------------------
set nocompatible 			" Make Vim more useful
set clipboard=unnamed " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set wildmenu   				" Enhance command-line completion
set hlsearch					" Highlight searches
set history=1000			" lots of command line history
set modifiable				" make buffer modifiable
set ignorecase				" Ignore case of searches
set autoread					" Reflects the changes of file immeditely
set mouse+=a					" Dont copy line numbers using mouse
set mat=5							" duration to show matching brace (1/10 sec)

" ----------------------------------------------------------------------------
" Mappings
"  ----------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" NERDTree related mappings
let NERDTreeShowHidden=1
let NERDTreeWinPos="left"
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:indent_guides_enable_on_vim_startup = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:jsx_ext_required = 1
let mapleader=" "

" Prefixing Google with G
let g:vim_g_command = "G"

" Vim JS Related
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']

set runtimepath^=~/.vim/bundle/ag
