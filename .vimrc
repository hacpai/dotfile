"
"                       __   _(_)_ __ ___  _ __ ___
"                       \ \ / / | '_ ` _ \| '__/ __|
"                        \ V /| | | | | | | | | (__
"                       (_)_/ |_|_| |_| |_|_|  \___|
"
" Author: arcticlion <david.malan@aol.com>
" Source: http://github.com/arcticlion/dotfiles/tree/master/vim
"
" This file is under a lot of stress, it changes frequently, so it's better if
" you watch the DVCS commits to stay in the loop.

" Setup language {{{ ==========================================================

" language en_US.UTF-8           " Solve some plugins incompatibilities

" }}}

" NEOBUNDLE {{{ ===============================================================

" Vundle is a Vim plugin manager
source ~/.vim/plugin.vim

" Molokai Color Scheme for Vim
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" Vim Chinese Documentation
let helptags = $VIM."/vimcdoc/doc"
set helplang=cn 
" Supertab default indent
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

" Vim-javascript provides syntax and indent
let javascript_enable_domhtmlcss = 1
let javascript_conceal = 1

" Vim-easymotion
let mapleader=";"
let g:EasyMotion_smartcase = 0
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s)
nmap S <Plug>(easymotion-s2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>k <Plug>(easymotion-k)

" Set Key Mapping
" GCC compile and name its .out file
nmap <C-c><C-c> :!gcc -Wall % -o %:r.out<CR>
" Tab and Shift-Tab do indent
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv
" <F2> insert time
imap <F2> <C-R>=strftime("ec")<CR>
" <F3> call ToggleSketch
map <F3> :call ToggleSketch()<CR>
" Key Binding like Bash
cmap <c-a> <home>
cmap <c-e> <end>
cnoremap <c-b> <left>
cnoremap <c-d> <del>
cnoremap <c-f> <right>
cnoremap <c-n> <down>
cnoremap <c-p> <up>
cnoremap <esc><c-b> <s-left>
cnoremap <esc><c-f> <s-right>

" The Base Setting
" vim default setting
set nocompatible
" Opening line number
set number
" Syntax highlighting
syntax on
syntax enable
" Auto indent
set autoindent
" Set the encodings
set encoding=utf-8
set fileencodings=utf-8,gb2312,gbk,latin1
" Smart indent
set smartindent
" Tab is 4 lattice
set tabstop=4
set shiftwidth=4
" Smart Tab
set smarttab
set softtabstop=4
" Space replace Tab
set expandtab
" Display automatic matching(){}[]
set showmatch
" Types of inspection
filetype on
" File type detection
filetype plugin indent on
" Open cursor scale
set ruler
" Shared clipboard contents
set clipboard+=unnamed
" Automatically save
set autowrite
" Display the cursor line
"set cursorline
set magic
" Open code folding
"set foldenable
" Fold a maximum of 4 layer
"set foldlevel=4
" Set the fold method
"set foldmethod=indent
"set foldcolumn=0
" According to the file type loading plug-in
filetype plugin indent on
" It is a variety of automatic code completion plugin
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
" Open mouse
set mouse=a
" 只有编辑区, 其他的什么都没有(菜单, 工具栏, etc.)
set go=
" Set the directory
set dir=/var/tmp
" 这个目录是在 ram 上, 设置了之后 swp文件就在这个文件夹储存.
" 我用笔记本经常带着在外面写点代码, 设置了 laptop-mode
" 硬盘20秒空闲就停转, swp 文件放在内存里就防止了 经常写入硬盘的操作
