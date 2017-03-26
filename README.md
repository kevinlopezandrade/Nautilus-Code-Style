# Nautilus-coding-style.vim

This plugin is to help you respecting the Nautilus coding style.

## Installation

You can just drop the nautilus.vim file in your ~/.vim/plugin directory. 
For neovim ~/.configure/nvim/plugin

Optionally you can use vim plugins managers as VimPlug.

### For Vim Plug

    Plug 'kevinlopezandrade/nautilus-coding-style'

## Usage

Define a "g:nautilus_patterns" array in your vimrc and the style will be applied 
if the buffer's path matches one of the pattern. For instance, you can match 
only projects under /usr/src/ and /nautilus with the following:

    let g:nautilus_patterns = [ "/usr/src/", "/nautilus" ]

Or you can use this command in Vim :

	:NautilusCodingStyle 

And the configuration will be aplied to your current buffer.

## License

Copyright (c) Vivien Didelot. Distributed under the same terms as Vim itself. 
See :help license.
