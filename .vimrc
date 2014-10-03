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

" Vim-airline
set laststatus=2
"let g:airline_left_sep='>'
"let g:airline_right_sep='<'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
set guifont=Source\ Code\ Pro\ 18
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
let g:ariline_enable_branch=1
let g:airline_enable_syntastic=1
"let  g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tavline#enabled = 1

" Vim Chinese Documentation
let helptags = $VIM."/vimcdoc/doc"
set helplang=cn

" Supertab default indent
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

" Vim-javascript provides syntax and indent
let javascript_enable_domhtmlcss = 1
let javascript_conceal = 1

" Neocomplete.vim
" ================================================================================
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" ================================================================================

" Vim-easymotion
let mapleader=";"
let g:EasyMotion_smartcase = 0
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s)
nmap S <Plug>(easymotion-s2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>k <Plug>(easymotion-k)

" Gundo.vim
nnoremap <F5> :GundoToggle<CR>

" __jsbeautify
nnoremap <F4> :call g:_Jsbeautify()<CR>

" Vim-instant-markdown
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_slow = 1

" Vim-markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=1

" previm
let g:previm_open_cmd = 'open -a Safari'
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" Set Key Mapping
" GCC compile and name its .out file
nmap <C-c><C-c> :!gcc -Wall % -o %:r.out<CR>
" Tab and Shift-Tab do indent
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv
" "jj"instead of <ESC>
imap jj <esc>
" <F2> insert time
imap <F2> <C-R>=strftime("ec")<CR>
" <F3> call ToggleSketch
map <F3> :call ToggleSketch()<CR>
" Insert mode move
imap <c-n> <down>
imap <c-p> <up>
imap <c-f> <right>
imap <c-b> <left>
"imap <c-d> <Esc>xa
imap <leader>b0 <esc>v0di
imap <leader>b$ <esc>v$di
"imap <leader>d <backspace>
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
" <Backspace> used delete in insert mode
set bs=2
" Smart indent
set smartindent
" Tab is 4 lattice
set tabstop=4
" Always display status line
set laststatus=2
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
filetype plugin on
" Open cursor scale
set ruler
" Shared clipboard contents
set clipboard+=unnamed
" Automatically save
set autowrite
" Display the cursor line
set cursorline
" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
set magic
" Ignore case-insensitive during retrieval
set ignorecase
" Highlighted match during retrieval
set hls
" 文件在Vim之外修改过，自动重新读入
set autoread
" Open code folding
"set foldenable
" Fold a maximum of 4 layer
"set foldlevel=4
" Set the code folding
set foldmethod=syntax
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
