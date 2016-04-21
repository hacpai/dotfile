" Theme {{{ =====================================

if has("gui_running")
    set guifont=PragmataPro\ for\ Powerline\:h18
    winsize 100 40
    set cursorcolumn
    set hidden
    set go-=T
    if &background == "dark"
        hi normal guibg=black
        set transp=16
    endif
    "set guioptions-=T " 隐藏工具栏
    "set guioptions-=m " 隐藏菜单栏
    "set guioptions-=L " 隐藏左侧滚动条
    "set showtabline=0 " 隐藏Tab栏 ndif
    "set guioptions-=L" Disable Scrollbar in NERDtree with MacVim
else
    let g:rehash256 = 1
    set bg=dark
    " Molokai Color Scheme for Vim
    "let g:molokai_original = 1
    "colorscheme molokai
    " Gruvbox Color Scheme for Vim
    let g:gruvbox_italic=0
    colorscheme gruvbox
    " Hybird Color Scheme for Vim
    "colorscheme hybrid
endif

" ========================================== }}}

" Tmux {{{ ===============================================================

if exists('$TMUX')
    set term=screen-256color
endif
if exists('$ITERM_PROFILE')
  if exists('$TMUX') 
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

" for tmux to automatically set paste and nopaste mode at the time pasting (as
" happens in VIM UI)
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif
  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"
  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction
let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
" =============================================================== }}}

" Rainbow_parentheses.vim
" Better Rainbow Parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Vim-airline
"let g:airline_left_sep='>'
"let g:airline_right_sep='<'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_powerline_fonts=1
let g:airline_powerline_symbols='unicode'
let g:airline_theme='gruvbox'
let g:airline#extensions#syntastic#enabled=1
"let  g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tavline#enabled=1


