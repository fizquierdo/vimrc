set nocompatible              " be iMproved, required
filetype off                  " required
"

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
Plugin 'tpope/vim-fugitive'   " :Ggrep text  # searches for text in all files, :copen to split a window with search results
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
let g:user_emmet_leader_key='<C-Z>' " Ctrl+z+, to autocomplete tag"

"Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
""" From https://medium.com/@rahul11061995/autocomplete-in-vim-for-js-developer-698c6275e341
""" Start autocompletion after 4 chars
"let g:ycm_min_num_of_chars_for_completion = 4
"let g:ycm_min_num_identifier_candidate_chars = 4
"let g:ycm_enable_diagnostic_highlighting = 0
""" Don't show YCM's preview window [ I find it really annoying ]
"set completeopt-=preview
"let g:ycm_add_preview_to_completeopt = 0
""" see also ~/.tern-config , added to make suggestions better


" simpler completion triggered with TAB
Plugin 'ajh17/VimCompletesMe'

" Show explicit indentation
Plugin 'Yggdroot/indentLine' " :IndentLinesToggle to enable/disable
let g:indentLine_enabled=0 

Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdTree'         "  :help NERD_tree.txt  
" m #to edit a node in the tree (rename, copy)
" :vertical res +10 #to expand 10 characters
Plugin 'scrooloose/syntastic'        " :help syntastic.txt
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_max_files=0
let g:ctrlp_clear_cache_on_exit = 0  " keep cache after closing, F5 for updating cache
let g:ctrlp_custom_ignore = 'node_modules\|git'

let g:ctrlp_match_window = 'min:4,max:20'

Plugin 'tpope/vim-surround'	" :help surround.txt
Plugin 'tpope/vim-repeat'					
Plugin 'tpope/vim-commentary'	  " visual-mode select + gc				
Plugin 'tpope/vim-endwise'					
Plugin 'tpope/vim-rails'					
Plugin 'thoughtbot/vim-rspec' " \t runs the current spec file
map <Leader>t :call RunCurrentSpecFile()<CR>    

Plugin 'tpope/vim-ragtag'		" indent HTML files			
Plugin 'delimitMate.vim' " autoclose parenthesis, brackets, commas

Plugin 'KabbAmine/vCoolor.vim' "color picker

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

"" Rbuy syntax checking 
let g:syntastic_ruby_checkers          = ['rubocop', 'mri']

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

"ctags $`brew --prefix`/bin/ctags -R --language=ruby --exclude=.git --exclude=log *
"navigate with ctrl+]
set tags=./tags;

",e <some-file> opens on this buffer. ,t on a split window.
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>

set backspace=indent,eol,start " backspace https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode"

" General settings
set number

" Searc
set hlsearch

" Indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
