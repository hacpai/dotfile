" Set Key Mapping {{{ =============================

" set Leader Key
let g:mapleader=";"
" GCC compile and name its .out file
nmap <C-c><C-c> :!gcc -Wall % -o %:r.out<CR>
" Tab and Shift-Tab do indent
nmap <tab> >>
nmap <s-tab> <<
vmap <tab> >gv
vmap <s-tab> <gv
" "jj"instead of <ESC>
inoremap jj <ESC>
" <F2> insert time
imap <F2> <C-R>=strftime("ec")<CR>
" <F3> call ToggleSketch
map <F3> :call ToggleSketch()<CR>
" Insert mode move
imap <c-n> <down>
imap <c-p> <up>
imap <c-f> <right>
imap <c-b> <left>
"imap <c-d> <EscAccording to different types of loading corresponding detected
"plug-inimap <leader>b0 <esc>v0di
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

" =========================================== }}}
