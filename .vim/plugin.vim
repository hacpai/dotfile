set nocompatible              " be iMproved, required
filetype off                  " required

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

" vim colorscheme
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'w0ng/vim-hybrid'


Plugin 'rainbow_parentheses.vim'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'


Plugin 'asins/vimcdoc'
Plugin 'TimothyYe/vim-tips'


Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'sjl/gundo.vim'


" HTML/JS/JQUERY/CSS
Plugin 'othree/html5.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'nono/jquery.vim'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'groenewege/vim-less'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'ap/vim-css-color'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}


" Python
Plugin 'hdima/python-syntax'
Plugin 'kevinw/pyflakes-vim'
"Plugin 'scrooloose/syntastic'
Plugin 'tell-k/vim-autopep8'
Plugin 'davidhalter/jedi-vim'


Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'ervandew/supertab'


Plugin 'fatih/vim-go'
Plugin 'vim-jp/vim-go-extra'


Plugin 'Lokaltog/vim-easymotion'
Plugin 'spiiph/vim-space'
Plugin 'gcmt/wildfire.vim'


Plugin 'godlygeek/tabular' 


Plugin  'junegunn/goyo.vim'


Plugin 'plasticboy/vim-markdown'
Plugin 'kannokanno/previm'


Plugin 'xu-cheng/brew.vim'


Plugin 'majutsushi/tagbar'
Plugin 'kshenoy/vim-signature'


Plugin 'scrooloose/nerdcommenter'

Plugin 'wakatime/vim-wakatime'

Plugin 'dag/vim-fish'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'sketch.vim'
Plugin '_jsbeautify'
Plugin 'FencView.vim'
Plugin 'txt.vim'
Plugin 'indexer.tar.gz'
Plugin 'DfrankUtil'
Plugin 'vimprj'
Plugin 'a.vim'
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

