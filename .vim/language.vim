" Go {{{ ===========================================

" vim-go-extra
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" =================================================}}}

" Java {{{ ================================
set tags +=~/others/openjdksrc/java/tags
" ========================================}}}

" Python {{{ ==================
" python-syntax
let g:python_highlight_all = 1
" ===========================}}}


" Markdown {{{ ==============================================================

" Vim-markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=1

" previm
let g:previm_open_cmd = 'open -a Safari'
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" ===========================================================================}}}
