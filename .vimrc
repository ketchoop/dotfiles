"================VUNDLE SETTINGS===================
set nocompatible
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' 
call vundle#end()
"=======================================================

autocmd Filetype yaml setlocal softtabstop=2 shiftwidth=2 expandtab smartindent
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 expandtab smartindent

"Indentation settings
filetype plugin indent on
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set backspace=indent,eol,start

set nu

"Fonts and chars
set encoding=utf8
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12

let g:webdevicons_enable = 0

if has('gui_running')
  let g:webdevicons_enable = 1
endif

"===============MAPPING================
inoremap <C-space> <C-x><C-o>
imap <C-@> <C-Space>
"inoremap <C-@> <C-Space>

"===============Plugins==========
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'shougo/vimproc.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'hesselbom/vim-hsftp'
Plugin 'mhinz/vim-startify'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tomasr/molokai'
Plugin 'fatih/vim-go'
"Plugin 'valloric/youcompleteme'
Plugin 'hashivim/vim-terraform'
Plugin 'pearofducks/ansible-vim'
Plugin 'Chiel92/vim-autoformat'

"===============Airline==========
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled= 1

"===============YCM=============
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:ycm_filetype_blacklist = { 'python': 1 }

"============Color schemes=======
syntax enable
call togglebg#map("<F5>")

if has('gui_running')
  colorscheme solarized
  set background=light
  set guifont=UbuntuMonoDerivativePowerline\ Nerd\ Font\ 14
else
    "=======Solarized(option)======
    set background=dark
    colorscheme solarized
endif

"===========Nerd tree===========
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
