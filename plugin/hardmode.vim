" hardmode.vim - Vim: HARD MODE!!!
" Author:       Matt Parrott <parrott.matt@gmail.com>
" Version:      1.0

let g:hardmodemsg = "VIM: hard Mode [ :Easy to exit ]"
let g:hardmode_on = 0

fun! HardMode()
    set backspace=0

    nnoremap <buffer> <Left> <Esc>:echo g:hardmodemsg<CR>
    nnoremap <buffer> <Right> <Esc>:echo g:hardmodemsg<CR>
    nnoremap <buffer> <Up> <Esc>:echo g:hardmodemsg<CR>
    nnoremap <buffer> <Down> <Esc>:echo g:hardmodemsg<CR>
    nnoremap <buffer> <PageUp> <Esc>:echo g:hardmodemsg<CR>
    nnoremap <buffer> <PageDown> <Esc>:echo g:hardmodemsg<CR>

    inoremap <buffer> <Left> <Esc>:echo g:hardmodemsg<CR>
    inoremap <buffer> <Right> <Esc>:echo g:hardmodemsg<CR>
    inoremap <buffer> <Up> <Esc>:echo g:hardmodemsg<CR>
    inoremap <buffer> <Down> <Esc>:echo g:hardmodemsg<CR>
    inoremap <buffer> <PageUp> <Esc>:echo g:hardmodemsg<CR>
    inoremap <buffer> <PageDown> <Esc>:echo g:hardmodemsg<CR>

    vnoremap <buffer> <Left> <Esc>:echo g:hardmodemsg<CR>
    vnoremap <buffer> <Right> <Esc>:echo g:hardmodemsg<CR>
    vnoremap <buffer> <Up> <Esc>:echo g:hardmodemsg<CR>
    vnoremap <buffer> <Down> <Esc>:echo g:hardmodemsg<CR>
    vnoremap <buffer> <PageUp> <Esc>:echo g:hardmodemsg<CR>
    vnoremap <buffer> <PageDown> <Esc>:echo g:hardmodemsg<CR>

    vnoremap <buffer> h <Esc>:echo g:hardmodemsg<CR>
    vnoremap <buffer> j <Esc>:echo g:hardmodemsg<CR>
    vnoremap <buffer> k <Esc>:echo g:hardmodemsg<CR>
    vnoremap <buffer> l <Esc>:echo g:hardmodemsg<CR>
    vnoremap <buffer> - <Esc>:echo g:hardmodemsg<CR>
    vnoremap <buffer> + <Esc>:echo g:hardmodemsg<CR>

    nnoremap <buffer> h <Esc>:echo g:hardmodemsg<CR>
    nnoremap <buffer> j <Esc>:echo g:hardmodemsg<CR>
    nnoremap <buffer> k <Esc>:echo g:hardmodemsg<CR>
    nnoremap <buffer> l <Esc>:echo g:hardmodemsg<CR>
    nnoremap <buffer> - <Esc>:echo g:hardmodemsg<CR>
    nnoremap <buffer> + <Esc>:echo g:hardmodemsg<CR>

    let g:hardmode_on = 1
    :echo g:hardmodemsg
endfun

fun! EasyMode()
    set backspace=indent,eol,start

    nunmap <buffer> <Left>
    nunmap <buffer> <Right>
    nunmap <buffer> <Up>
    nunmap <buffer> <Down>
    nunmap <buffer> <PageUp>
    nunmap <buffer> <PageDown>

    iunmap <buffer> <Left>
    iunmap <buffer> <Right>
    iunmap <buffer> <Up>
    iunmap <buffer> <Down>
    iunmap <buffer> <PageUp>
    iunmap <buffer> <PageDown>

    vunmap <buffer> <Left>
    vunmap <buffer> <Right>
    vunmap <buffer> <Up>
    vunmap <buffer> <Down>
    vunmap <buffer> <PageUp>
    vunmap <buffer> <PageDown>

    vunmap <buffer> h
    vunmap <buffer> j
    vunmap <buffer> k
    vunmap <buffer> l
    vunmap <buffer> -
    vunmap <buffer> +

    nunmap <buffer> h
    nunmap <buffer> j
    nunmap <buffer> k
    nunmap <buffer> l
    nunmap <buffer> -
    nunmap <buffer> +

    let g:hardmode_on = 0
    :echo "You are weak..."
endfun

fun! ToggleHardMode()
    if g:hardmode_on
        call EasyMode()
    else
        call HardMode()
    end
endfun
