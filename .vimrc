"================VUNDLE SETTINGS===================
set nocompatible
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()
"=======================================================

autocmd Filetype javascript setlocal softtabstop=2 shiftwidth=2
autocmd Filetype yaml setlocal softtabstop=2 shiftwidth=2
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 expandtab smartindent

"Indentation settings
filetype plugin indent on
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

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
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'shougo/vimproc.vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'hesselbom/vim-hsftp'
Plugin 'mhinz/vim-startify'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tomasr/molokai'
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'
Plugin 'valloric/youcompleteme'

"===============Airline==========
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled= 1

"===============YCM=============
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:ycm_filetype_blacklist = { 'python': 1 }

"==============GHCMod============
"Autocheck on writing
autocmd BufWritePost *.hs GhcModCheckAndLintAsync

"==============Neco-GHC==========
" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
let g:necoghc_enable_detailed_browse = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

"============Emmet==============
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-l>'


"============Color schemes=======
syntax enable

if has('gui_running')
  colorscheme solarized
  set background=light
  set guifont=UbuntuMonoDerivativePowerline\ Nerd\ Font\ 14
  call togglebg#map("<F5>")
else
    "=======Solarized(option)======
    "let g:solarized_termcolors=256
    "let g:solarized_termtrans=0
    "let g:solarized_bold=0
    "let g:solarized_contrast="high"
    "let g:solarized_visibility="high"
    "set background=light
    "colorscheme solarized
    let g:rehash256=1
    colorscheme molokai
endif


"===========Nerd tree===========
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
