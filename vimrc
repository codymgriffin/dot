set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'trapd00r/neverland-vim-theme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/CycleColor'
Plugin 'edkolev/tmuxline.vim'
Plugin 'fatih/vim-go'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf.vim'
"Plugin 'vim-syntastic/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

"appearance
set number
set t_Co=256
colorscheme neverland2
let g:airline_theme = 'tomorrow'
let g:airline_powerline_fonts = 1

"mappings
map <C-n> :NERDTree<CR>
map <C-p> :FZF<CR>
"map <C-c> :CycleColorNext<CR>

"options
set tabstop=4
set expandtab
set shiftwidth=4
set updatetime=100

if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif
