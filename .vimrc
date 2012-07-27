set nocompatible
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Bundles
" vim-scripts
Bundle "SelectBuf"
Bundle "SuperTab"
Bundle "The-NERD-tree"
Bundle "Wombat"
Bundle "wombat256.vim"
Bundle "genutils"
Bundle "git.zip"
Bundle "L9"
" github
Bundle "itspriddle/vim-lesscss"
Bundle "plasticboy/vim-markdown"
Bundle "kien/ctrlp.vim"

set backupskip=/tmp/*,/private/tmp/*"

colorscheme wombat256mod

set background=dark
filetype plugin on
syntax on

" Autosettings
augroup mkd
  autocmd FileType mkd set ai spell nofoldenable
  " old options: formatoptions=tcroqn2 comments=n:&gt;
augroup END

augroup gitcommit
  autocmd FileType gitcommit set spell
augroup END


set laststatus=2

set nu!
set tabstop=2
set wrap
set autoindent
set backspace=indent,eol,start

" Mappings

"   Tab nav
map ;] :tabnext<cr>
map ;[ :tabprevious<cr>

" Work

set expandtab
set shiftwidth=2

let NERDTreeDirArrows = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|CVS$\|\.svn$\|target$',
  \ 'file': '\.class$\|\.so$',
  \ }
let g:ctrlp_extensions = ['dir', 'mixed']
let g:vundle_default_git_proto = 'git'

