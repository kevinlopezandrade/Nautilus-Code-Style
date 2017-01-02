#vivien/vim-linux-coding-style nautilussty.vim

This plugin is meant to help you respecting the Nautilus coding style.

## Installation

You can just drop the nautilussty.vim file in your ~/.vim/plugin directory. 
Alternatively you can use the Git repository with a manager such as 
[Pathogen](https://github.com/tpope/vim-pathogen).

###For Vim Plug

    Plug 'kevinlopezandrade/nautilus-coding-style'

## Usage

Define a "g:nautilus_patterns" array in your vimrc and the style will be applied 
if the buffer's path matches one of the pattern. For instance, you can match 
only projects under /usr/src/ and /nautilus with the following:

    let g:nautilus_patterns = [ "/usr/src/", "/nautilus" ]

## License

Copyright (c) Vivien Didelot. Distributed under the same terms as Vim itself. 
See :help license.
