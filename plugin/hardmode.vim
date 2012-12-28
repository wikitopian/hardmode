let g:hardmodemsg = "VIM: hard Mode [ :Easy to exit ]"

fun! HardMode()
    set backspace=0

    nnoremap <buffer> <Left> <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> <Right> <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> <Up> <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> <Down> <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> <PageUp> <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> <PageDown> <Esc>:echom g:hardmodemsg<CR>

    inoremap <buffer> <Left> <Esc>:echom g:hardmodemsg<CR>
    inoremap <buffer> <Right> <Esc>:echom g:hardmodemsg<CR>
    inoremap <buffer> <Up> <Esc>:echom g:hardmodemsg<CR>
    inoremap <buffer> <Down> <Esc>:echom g:hardmodemsg<CR>
    inoremap <buffer> <PageUp> <Esc>:echom g:hardmodemsg<CR>
    inoremap <buffer> <PageDown> <Esc>:echom g:hardmodemsg<CR>

    vnoremap <buffer> <Left> <Esc>:echom g:hardmodemsg<CR>
    vnoremap <buffer> <Right> <Esc>:echom g:hardmodemsg<CR>
    vnoremap <buffer> <Up> <Esc>:echom g:hardmodemsg<CR>
    vnoremap <buffer> <Down> <Esc>:echom g:hardmodemsg<CR>
    vnoremap <buffer> <PageUp> <Esc>:echom g:hardmodemsg<CR>
    vnoremap <buffer> <PageDown> <Esc>:echom g:hardmodemsg<CR>

    vnoremap <buffer> h <Esc>:echom g:hardmodemsg<CR>
    vnoremap <buffer> j <Esc>:echom g:hardmodemsg<CR>
    vnoremap <buffer> k <Esc>:echom g:hardmodemsg<CR>
    vnoremap <buffer> l <Esc>:echom g:hardmodemsg<CR>
    vnoremap <buffer> - <Esc>:echom g:hardmodemsg<CR>
    vnoremap <buffer> + <Esc>:echom g:hardmodemsg<CR>

    nnoremap <buffer> h <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> j <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> k <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> l <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> - <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> + <Esc>:echom g:hardmodemsg<CR>
    nnoremap <buffer> <CR> <Esc>:echom g:hardmodemsg<CR>

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
    nunmap <buffer> <CR>

    :echo "You are weak..."
endfun
