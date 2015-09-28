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

" vim colorscheme
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'w0ng/vim-hybrid'
" highlight parentheses
Plugin 'rainbow_parentheses.vim'
" light status/tabline
Plugin 'bling/vim-airline'
" displaying thin vertical lines at each indentation level
Plugin 'Yggdroot/indentLine'
" Chinese vimcdoc
Plugin 'asins/vimcdoc'
" vim-tips
Plugin 'TimothyYe/vim-tips'
" use git command with vim
Plugin 'tpope/vim-fugitive'
" shows a git diff in the gutter
Plugin 'airblade/vim-gitgutter'
" Graph your Vim undo tree in style
Plugin 'sjl/gundo.vim'
" css/less/sass/html color preview for vim
Plugin 'gorodinskiy/vim-coloresque'
" Highlight colors in css files
Plugin 'ap/vim-css-color'
" quick write html
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
" Smart selection of the closest text object
Plugin 'gcmt/wildfire.vim'

"  Aligning Text
Plugin 'godlygeek/tabular' 

" Distraction-free writing
Plugin  'junegunn/goyo.vim'


Plugin 'plasticboy/vim-markdown'
Plugin 'kannokanno/previm'


Plugin 'xu-cheng/brew.vim'


Plugin 'majutsushi/tagbar'
Plugin 'kshenoy/vim-signature'

" quick comment
Plugin 'scrooloose/nerdcommenter'


Plugin 'kien/ctrlp.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'tacahiroy/ctrlp-funky'


Plugin 'wakatime/vim-wakatime'


Plugin 'dag/vim-fish'

Plugin 'rodjek/vim-puppet'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'sketch.vim'
Plugin 'FencView.vim'
" about edit text
Plugin 'txt.vim'
" Auto-generate tags
Plugin 'indexer.tar.gz'
Plugin 'DfrankUtil'
Plugin 'vimprj'
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

