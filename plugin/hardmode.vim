" hardmode.vim - Vim: HARD MODE!!!
" Authors:      Matt Parrott <parrott.matt@gmail.com>, Xeross <contact@xeross.me>
" Version:      1.0

if exists('g:HardMode_loaded')
    finish
endif
let g:HardMode_loaded = 1

if !exists('g:HardMode_currentMode')
    let g:HardMode_currentMode = 'easy'
end

if !exists('g:HardMode_level')
    let g:HardMode_level = 'advanced'
end

if !exists('g:HardMode_echo')
    let g:HardMode_echo = 1
end

if !exists('g:HardMode_hardmodeMsg')
    let g:HardMode_hardmodeMsg = "VIM: Hard Mode [ ':call EasyMode()' to exit ]"
end
if !exists('g:HardMode_easymodeMsg')
    let g:HardMode_easymodeMsg = "You are weak..."
end

" Only echo if g:HardMode_echo = 1
fun! HardModeEcho(message)
    if g:HardMode_echo
        echo a:message
    end
endfun

fun! NoArrows()

    nnoremap <buffer> <Left> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> <Right> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> <Up> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> <Down> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> <PageUp> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> <PageDown> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    inoremap <buffer> <Left> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <buffer> <Right> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <buffer> <Up> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <buffer> <Down> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <buffer> <PageUp> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    inoremap <buffer> <PageDown> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    vnoremap <buffer> <Left> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> <Right> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> <Up> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> <Down> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> <PageUp> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> <PageDown> <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

endfun

fun! NoLetters()

    vnoremap <buffer> h <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> j <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> k <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> l <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> - <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> + <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    " Display line motions
    vnoremap <buffer> gj <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    vnoremap <buffer> gk <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> gk <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> gj <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

    nnoremap <buffer> h <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> j <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> k <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> l <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> - <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>
    nnoremap <buffer> + <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>

endfun

fun! NoBackspace()

    set backspace=0

endfun

fun! HardMode()

    call NoArrows()

    if g:HardMode_level != 'wannabe'
        call NoLetters()
        call NoBackspace()
    end

    let g:HardMode_currentMode = 'hard'

    call HardModeEcho(g:HardMode_hardmodeMsg)
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

    let g:HardMode_currentMode = 'easy'

    call HardModeEcho(g:HardMode_easymodeMsg)
endfun

fun! ToggleHardMode()
    if g:HardMode_currentMode == 'hard'
        call EasyMode()
    else
        call HardMode()
    end
endfun
