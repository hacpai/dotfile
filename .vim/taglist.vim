" tagbar {{{ ==========================================
let g:tagbar_autofocus=1
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let g:tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <F8> :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let g:tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
	\ 'ctagstype' : 'c++',
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Java 
let tagbar_type_java = {}
let tagbar_type_java.ctagstype = 'java'
let tagbar_type_java.kinds     = [
            \ 'p:packages:1',
            \ 'f:fields:0',
            \ 'g:enum types:0',
            \ 'e:enum constants:0',
            \ 'i:interfaces:0',
            \ 'c:classes:0',
            \ 'm:methods:0'
            \ ]
let tagbar_type_java.sro        = '.'
let tagbar_type_java.kind2scope = {
            \ 'g' : 'enum',
            \ 'i' : 'interface',
            \ 'c' : 'class'
            \ }
let tagbar_type_java.scope2kind = {
            \ 'enum'      : 'g',
            \ 'interface' : 'i',
            \ 'class'     : 'c'
            \ }

" ================================================ }}}


" ctags {{{ ====================

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

" ========================== }}}
