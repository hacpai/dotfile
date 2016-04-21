"
"                       __   _(_)_ __ ___  _ __ ___
"                       \ \ / / | '_ ` _ \| '__/ __|
"                        \ V /| | | | | | | | | (__
"                       (_)_/ |_|_| |_| |_|_|  \___|
"
" Author: hacpai <iomniscience@icloud.com>
" Source: http://github.com/arcticlion/dotfiles/tree/master/vim
"
" This file is under a lot of stress, it changes frequently, so it's better if
" you watch the DVCS commits to stay in the loop.

source ~/.vim/plugin.vim
source ~/.vim/style.vim
source ~/.vim/completion.vim
source ~/.vim/taglist.vim
source ~/.vim/language.vim
source ~/.vim/keymap.vim

" Vim Chinese Documentation
let g:helptags = $VIM."/vimcdoc/doc"
set helplang=cn

" Tabular {{{ ===============================================================

if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction

" =============================================================== }}}

" Vim-easymotion
let g:EasyMotion_smartcase = 0
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s)
nmap S <Plug>(easymotion-s2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>k <Plug>(easymotion-k)

" Gundo.vim
nnoremap <F5> :GundoToggle<CR>
set undolevels=1000 " How many undos
set undoreload=10000 " number of lines to save for undo
set undofile " keep a persistent backup file
set undodir=/var/tmp/vimundo/

" 撤销树持久化存储
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry

" Vim-instant-markdown
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_slow = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['pyflakes']
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_enable_highlighting = 0
"let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }

""NERDtree
"" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
""nmap <Leader>fl :NERDTreeToggle<CR>
"" 设置NERDTree子窗口宽度
"let NERDTreeWinSize=32
"" 设置NERDTree子窗口位置
"let NERDTreeWinPos="right"
"" 显示隐藏文件
"let NERDTreeShowHidden=1
"" NERDTree 子窗口中不显示冗余帮助信息
""let NERDTreeMinimalUI=1
"" 删除文件时自动删除文件对应 buffer
"let NERDTreeAutoDeleteBuffer=1
"" 当打开 NERDTree 窗口时，自动显示 Bookmarks
"let NERDTreeShowBookmarks=1
"" open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree %
"autocmd VimEnter * wincmd w
"" NERDTress File highlighting
"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 "exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 "exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
"endfunction

"call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
"call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" wildfire
" This selects the next closest text object.
let g:wildfire_fuel_map = "<ENTER>"
" This selects the previous closest text object.
let g:wildfire_water_map = "<BS>"
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "ip", "it"]

" vim-fish
if $SHELL =~ 'fish'
  set shell='/bin/sh'
endif

" CtrlPFunky
" A super simple function navigator
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']


" The Base Setting {{{ ================================================
" vim default setting

" It is a variety of automatic code completion plugin
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete

" 关闭兼容模式
set nocompatible
" history : how many lines of history VIM has to remember
set history=2000
" vim 自身命令行模式智能补全
set wildmenu
" Opening line number
set number
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" Open syntax highlighting
syntax enable
set t_Co=256
" Auto indent
set autoindent
" Set the encodings
set encoding=utf-8
set fileencodings=utf-8,gb2312,gbk,latin1
" <Backspace> used delete in insert mode
set bs=2
" Smart indent
set smartindent
" Always display Status Bar
set laststatus=2
" Smart Tab
set smarttab
" Show the command in the status line
set showcmd
" display current modes
set showmode
" Display automatic matching(){}[]
set showmatch
" When searching try to be smart about cases 
set smartcase
" tenths of a second to show the matching parenthesis
set matchtime=2
" Types of inspection
filetype on
" According to different types of loading corresponding detected plugins
filetype plugin on
" Display cursor location 
set ruler
" Shared clipboard contents
set clipboard+=unnamed
" Automatically save
set autowrite
" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
" show location
set cursorline 
set cursorcolumn
" For regular expressions turn magic on
set magic
" change the terminal's title
set title
" keep 3 lines when scrolling
set scrolloff=7                 
" 开启实时搜索功能
set incsearch
" Ignore case-insensitive during searching
set ignorecase
" Highlighted match during searching
set hlsearch
" 文件在Vim之外修改过，自动重新读入
set autoread
" select & complete
set selection=inclusive
set selectmode=mouse,key
set completeopt=longest,menu
set wildmode=longest,list,full
set wildignore=*.o,*~,*.pyc,*.class

" Open code indent
" 自适应不同语言的智能缩进
filetype indent on
" Space replace Tab
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符所占空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" Open code folding
" 操作：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠。
" Fold a maximum of 4 layer
"set foldlevel=4
" 启动 vim 时自动关闭折叠代码
set nofoldenable
"set foldcolumn=0
" Open mouse
set mouse=a
" 只有编辑区, 其他的什么都没有(菜单, 工具栏, etc.)
set go=
" Set the directory
set dir=/var/tmp
" 这个目录是在 ram 上, 设置了之后 swp文件就在这个文件夹储存.
" 我用笔记本经常带着在外面写点代码, 设置了 laptop-mode
" 硬盘20秒空闲就停转, swp 文件放在内存里就防止了 经常写入硬盘的操作
" ====================================================================== }}}
