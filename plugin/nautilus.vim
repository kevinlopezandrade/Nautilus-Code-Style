" Vim plugin to fit the Nautilus coding style.
" Maintainer:   Kevin Lopez <kevin@kevlopez.com> 
" License:      Distributed under the same terms as Vim itself.
"
" This script is inspired from an article written by Bart:
" http://www.jukie.net/bart/blog/vim-and-linux-coding-style
" and various user comments.
" 
" This script is only a little modification from the original creator:
" Vivien Didelot <vivien.didelot@savoirfairelinux.com> script.
" All credits for him.
" 
"
" For those who want to apply these options conditionally, you can define an
" array of patterns in your vimrc and these options will be applied only if
" the buffer's path matches one of the pattern. In the following example,
" options will be applied only if "/nautilus/" or "/src" is in buffer's path.
"
"   let g:nautilus_patterns = [ "/nautilus/", "/src/" ]

if exists("g:loaded_nautilus")
    finish
endif
let g:loaded_nautilus = 1


augroup nautilus
    autocmd!

    autocmd FileType c,cpp call s:NautilusConfigure()
augroup END

function s:NautilusConfigure()
    let apply_style = 0

    if exists("g:nautilus_patterns")
        let path = expand('%:p')
        for p in g:nautilus_patterns
            if path =~ p
                let apply_style = 1
                break
            endif
        endfor
    endif

    if apply_style
        call s:NautilusCodingStyle()
    endif
endfunction

command! NautilusCodingStyle call s:NautilusCodingStyle()

function! s:NautilusCodingStyle()
    call s:NautilusFormatting()
endfunction

function s:NautilusFormatting()
    setlocal tabstop=4
    setlocal shiftwidth=4
    setlocal softtabstop=4
    setlocal textwidth=120
    setlocal expandtab

    setlocal cindent
endfunction

" vim: ts=4 et sw=4
