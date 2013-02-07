" hardmode.vim - Vim: HARD MODE!!!
" Author:       Matt Parrott <parrott.matt@gmail.com>
" Version:      1.0

let g:hardmodemsg = "VIM: hard Mode [ ':call EasyMode()' to exit]"

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

    :echo g:hardmodemsg
endfun

fun! EasyMode()
    set backspace=indent,eol,start

    silent! nunmap <buffer> <Left>
    silent! nunmap <buffer> <Right>
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <PageUp>
    silent! nunmap <buffer> <PageDown>

    silent! iunmap <buffer> <Left>
    silent! iunmap <buffer> <Right>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <PageUp>
    silent! iunmap <buffer> <PageDown>

    silent! vunmap <buffer> <Left>
    silent! vunmap <buffer> <Right>
    silent! vunmap <buffer> <Up>
    silent! vunmap <buffer> <Down>
    silent! vunmap <buffer> <PageUp>
    silent! vunmap <buffer> <PageDown>

    silent! vunmap <buffer> h
    silent! vunmap <buffer> j
    silent! vunmap <buffer> k
    silent! vunmap <buffer> l
    silent! vunmap <buffer> -
    silent! vunmap <buffer> +

    silent! nunmap <buffer> h
    silent! nunmap <buffer> j
    silent! nunmap <buffer> k
    silent! nunmap <buffer> l
    silent! nunmap <buffer> -
    silent! nunmap <buffer> +

    :echo "You are weak..."
endfun
