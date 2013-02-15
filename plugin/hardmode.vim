" hardmode.vim - Vim: HARD MODE!!!
" Author:       Matt Parrott <parrott.matt@gmail.com>
" Version:      1.0

if exists('g:loaded_hardmode')
    finish
endif
let g:loaded_hardmode = 1

if !exists('g:hardmode_on')
    let g:hardmode_on = 0
end

if !exists('g:hardmode_echo')
    let g:hardmode_echo = 1
end

if !exists('g:hardmodemsg')
    let g:hardmodemsg = "VIM: Hard Mode [ :EasyMode to exit ]"
end
if !exists('g:easymodemsg')
    let g:easymodemsg = "You are weak..."
end

" Only echo if g:hardmode_echo = 1
fun! HardModeEcho(message)
    if g:hardmode_echo
        echo a:message
    end
endfun

fun! HardMode()
    set backspace=0

    nnoremap <buffer> <Left> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    nnoremap <buffer> <Right> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    nnoremap <buffer> <Up> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    nnoremap <buffer> <Down> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    nnoremap <buffer> <PageUp> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    nnoremap <buffer> <PageDown> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>

    inoremap <buffer> <Left> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    inoremap <buffer> <Right> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    inoremap <buffer> <Up> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    inoremap <buffer> <Down> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    inoremap <buffer> <PageUp> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    inoremap <buffer> <PageDown> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>

    vnoremap <buffer> <Left> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    vnoremap <buffer> <Right> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    vnoremap <buffer> <Up> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    vnoremap <buffer> <Down> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    vnoremap <buffer> <PageUp> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    vnoremap <buffer> <PageDown> <Esc>:call HardModeEcho(g:hardmodemsg)<CR>

    vnoremap <buffer> h <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    vnoremap <buffer> j <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    vnoremap <buffer> k <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    vnoremap <buffer> l <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    vnoremap <buffer> - <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    vnoremap <buffer> + <Esc>:call HardModeEcho(g:hardmodemsg)<CR>

    nnoremap <buffer> h <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    nnoremap <buffer> j <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    nnoremap <buffer> k <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    nnoremap <buffer> l <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    nnoremap <buffer> - <Esc>:call HardModeEcho(g:hardmodemsg)<CR>
    nnoremap <buffer> + <Esc>:call HardModeEcho(g:hardmodemsg)<CR>

    let g:hardmode_on = 1

    call HardModeEcho(g:hardmodemsg)
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

    let g:hardmode_on = 0

    call HardModeEcho(g:easymodemsg)
endfun

fun! ToggleHardMode()
    if g:hardmode_on
        call EasyMode()
    else
        call HardMode()
    end
endfun
