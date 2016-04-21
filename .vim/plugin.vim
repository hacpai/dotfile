set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" group 'themes'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'w0ng/vim-hybrid'

" group 'interface'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'

" group 'motion'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'spiiph/vim-space'

" group 'explore'
Plugin 'majutsushi/tagbar'
" A simple file navigator
Plugin 'ctrlpvim/ctrlp.vim'
"Search and Explore
Plugin 'dyng/ctrlsf.vim'
" A simple function navigator
Plugin 'tacahiroy/ctrlp-funky'

" group 'writing'
"  Aligning Text
Plugin 'godlygeek/tabular' 
" quick comment
Plugin 'scrooloose/nerdcommenter'

" group 'git'
" use git command with vim
Plugin 'tpope/vim-fugitive'
" shows a git diff in the gutter
Plugin 'airblade/vim-gitgutter'
Plugin 'Shougo/unite.vim'
Plugin 'chemzqm/vim-easygit'
Plugin 'chemzqm/unite-git-log'

" group 'colorful'
" highlight parentheses
Plugin 'rainbow_parentheses.vim'
" css/less/sass/html color preview for vim
Plugin 'gorodinskiy/vim-coloresque'
" Highlight colors in css files
Plugin 'ap/vim-css-color'

" group 'Python'
Plugin 'hdima/python-syntax'
Plugin 'kevinw/pyflakes-vim'
"Plugin 'scrooloose/syntastic'
Plugin 'tell-k/vim-autopep8'
Plugin 'davidhalter/jedi-vim'

" group 'doc'
" Chinese vimcdoc
Plugin 'asins/vimcdoc'
" vim-tips
Plugin 'TimothyYe/vim-tips'

" group 'html'
" quick write html
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" group 'Java'
Plugin 'artur-shaik/vim-javacomplete2'

" group 'complete'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/neoinclude.vim'
Plugin 'Shougo/neco-vim'
Plugin 'Shougo/neco-syntax'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'

" group 'Go'
Plugin 'fatih/vim-go'
Plugin 'vim-jp/vim-go-extra'

" group 'JavaScript'
Plugin 'ternjs/tern_for_vim', {'do': 'npm install'}

" group 'C'
Plugin 'Rip-Rip/clang_complete'

" group 'highlight'
Plugin 'dag/vim-fish'
Plugin 'rodjek/vim-puppet'
Plugin 'xu-cheng/brew.vim'
Plugin 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
Plugin 'kannokanno/previm'

" group 'function'
" Graph your Vim undo tree in style
Plugin 'sjl/gundo.vim'
Plugin 'Shougo/vimproc.vim'
" Smart selection of the closest text object
Plugin 'gcmt/wildfire.vim'
" Distraction-free writing
Plugin  'junegunn/goyo.vim'
" toggle, display and navigate marks
Plugin 'kshenoy/vim-signature'
"Plugin 'wakatime/vim-wakatime'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'sketch.vim'
Plugin 'FencView.vim'
" about edit text
Plugin 'txt.vim'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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

