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

To have it always enabled, add this to your vimrc:

    let g:hardmode = 1

Toggling it is done with `<Leader>h` by default, but you can override it
by adding a line like this to your vimrc:

    nnoremap <Leader>H <Esc>:call ToggleHardMode()<CR>

Presuming your leader is still the `\` key, you can toggle Hard Mode by
pressing `\h` while in Normal-mode.

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
