set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key='<C-Z>' " Ctr+Z, to autocomplete tag"

Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
"" From https://medium.com/@rahul11061995/autocomplete-in-vim-for-js-developer-698c6275e341
"" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
"" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
"" see also ~/.tern-config , added to make suggestions better

Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdTree'         "  :help NERD_tree.txt 
Plugin 'scrooloose/syntastic'        " :help syntastic.txt
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'	" :help surround.txt
Plugin 'tpope/vim-repeat'					
Plugin 'tpope/vim-commentary'	  " visual-mode select + gc				
Plugin 'tpope/vim-endwise'					
Plugin 'tpope/vim-rails'					
Plugin 'tpope/vim-ragtag'		" indent HTML files			
Plugin 'delimitMate.vim' " autoclose parenthesis, brackets, commas

" light color scheme 
"Plugin 'atelierbram/vim-colors_atelier-schemes'
Plugin 'NLKNguyen/papercolor-theme'

" React dev
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " syntax highlight for jsx in js files as well"


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable

set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor
"colorscheme Atelier_DuneLight
"let g:airline_theme='Atelier_DuneLight'

set path +=** " tab-completion for searches"
set wildmenu

syntax on
set ruler

set backspace=indent,eol,start " backspace https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode"

" Indentation
"set tabstop=2
"set softtabstop=2
"set shiftwidth=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2