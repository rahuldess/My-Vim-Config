execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set nocompatible
set smartindent
set autoindent
set hlsearch
set modifiable
set number
set relativenumber
set tabstop=2 shiftwidth=2
set backspace=2
set laststatus=2
" Reflects the changes of file immeditely
set autoread

" Dont copy line numbers using mouse
set mouse+=a

" Dont store vim backup
set nobackup

filetype indent on
filetype on           " Enable filetype detection
filetype plugin on    " Enable filetype-specific plugins

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let NERDTreeShowHidden=1

" Prefixing Google with G
let g:vim_g_command = "G"

" Commenting blocks of code.
" autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
" autocmd FileType sh,ruby,python   let b:comment_leader = '# '
" autocmd FileType conf,fstab       let b:comment_leader = '# '
" autocmd FileType tex              let b:comment_leader = '% '
" autocmd FileType mail             let b:comment_leader = '> '
" autocmd FileType vim              let b:comment_leader = '" '
" noremap <silent> ,cc :<C-B>silent
" <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
" noremap <silent> ,cu :<C-B>silent
" <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
