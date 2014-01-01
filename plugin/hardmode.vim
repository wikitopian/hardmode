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

fun! s:SafeMap(keys, modes, enable)
    let l:nmodes = strlen(a:modes) - 1
    let l:i = 0
    while l:i < l:nmodes
        for l:key in a:keys
            if a:enable
                if maparg(l:key, a:modes[i]) =~ 'HardMode'
                    execute 'silent! '. a:modes[i] .'unmap <buffer> '. l:key
                endif
            else
                if empty(maparg(l:key, a:modes[i]))
                    execute a:modes[i] .'noremap <buffer> '. l:key .' <Esc>:call HardModeEcho(g:HardMode_hardmodeMsg)<CR>'
                endif
            endif
        endfor
        let l:i += 1
    endwhile
endfun

fun! Arrows(enable)

    call s:SafeMap(['<Left>', '<Right>', '<Up>', '<Down>', '<PageUp>', '<PageDown>'], 'niv', a:enable)

endfun

fun! Letters(enable)

    call s:SafeMap(['h', 'j', 'k', 'l', '-', '+', 'gj', 'gk'], 'nv', a:enable)

endfun

fun! Backspace(enable)

    let l:bs = a:enable ? '0' : 'indent,eol,start'
    execute 'set backspace='. l:bs

endfun

fun! s:Easy(enable)

    call Arrows(a:enable)

    if g:HardMode_level != 'wannabe'
        call Letters(a:enable)
        call Backspace(a:enable)
    end

    let g:HardMode_currentMode = a:enable ? 'easy' : 'hard'

endfun

fun! HardMode()
    call s:Easy(0)
    call HardModeEcho(g:HardMode_hardmodeMsg)
endfun

fun! EasyMode()
    call s:Easy(1)
    call HardModeEcho(g:HardMode_easymodeMsg)
endfun

fun! ToggleHardMode()
    if g:HardMode_currentMode == 'hard'
        call EasyMode()
    else
        call HardMode()
    end
endfun
