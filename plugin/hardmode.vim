noremap <Left> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <PageUp> <nop>
noremap <PageDown> <nop>

inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <PageUp> <nop>
inoremap <PageDown> <nop>

noremap <CR> <nop>

function! Hard_Mode()
    nnoremap <buffer> h <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
    nnoremap <buffer> j <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
    nnoremap <buffer> k <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
    nnoremap <buffer> l <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
    nnoremap <buffer> - <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
    nnoremap <buffer> + <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>

    vnoremap <buffer> h <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
    vnoremap <buffer> j <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
    vnoremap <buffer> k <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
    vnoremap <buffer> l <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
    vnoremap <buffer> - <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
    vnoremap <buffer> + <Esc>:echom "VIM: Hard Mode! (leader-h to exit)"<CR>
endfunction

function! Easy_Mode()
    nnoremap <buffer> h h
    nnoremap <buffer> j j
    nnoremap <buffer> k k
    nnoremap <buffer> l l
    nnoremap <buffer> - -
    nnoremap <buffer> + +

    vnoremap <buffer> h h
    vnoremap <buffer> j j
    vnoremap <buffer> k k
    vnoremap <buffer> l l
    vnoremap <buffer> - -
    vnoremap <buffer> + +
    :echo "You are weak..."
endfunction
noremap <leader>h <Esc>:call Easy_Mode()<CR>
noremap <leader>H <Esc>:call Hard_Mode()<CR>
call Hard_Mode()
