VIM: Hard Mode
==============

Hard Mode is a plugin which disables the arrow keys, the hjkl keys,
the page up/down keys, and a handful of other keys which allow one
to rely on character-wise navigation. The philosophy behind Hard Mode
is that you'll never master Vim's advanced motion and search functionality
if you can fall back on the anti-pattern of fumbling around your code with
the arrow keys.

MAPPINGS
--------

To enable it:

    :call HardMode()

To disable it:

    :call EasyMode()

To enable it by default, add this to your vimrc:

    autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

You may also wish to add the following to line to your vimrc:

    nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

With that line added, presuming your leader is still the `\` key, you
can toggle Hard Mode by pressing `\h` while in Normal-mode.

Installation
------------

If you don't have a preferred installation method, I recommend
installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

    cd ~/.vim/bundle
    git clone git://github.com/wikitopian/hardmode.git

Once help tags have been generated, you can view the manual with
`:help hardmode`.

Project Authors
---------------

[Matt Parrott](https://github.com/wikitopian) and [Xeross](https://github.com/xeross)

License
-------

GPLv2
