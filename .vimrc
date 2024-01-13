set nocompatible
set number
set encoding=utf-8
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
filetype plugin on
syntax on

nnoremap / /\v
vnoremap / /\v
set nohlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search
set listchars=tab:▸\ ,eol:¬

command! Gti execute "normal i[[Incoming]]<ESC><CR>"
cnoreabbrev gti Gti

function! SwapDown()
    if line('$') > 1
        let pos = getpos('.')
        if pos[1] != getpos('$')[1]
            m +1
            let pos[1] += 1
            call setpos('.', pos)
        endif
    endif
endfunction

function! SwapUp()
    if line('$') > 1
        let pos = getpos('.')
        if pos[1] != 1
            m -2
            let pos[1] -= 1
            call setpos('.', pos)
        endif
    endif
endfunction

nnoremap <silent> <C-j> :call SwapDown()<CR>
nnoremap <silent> <C-k> :call SwapUp()<CR>
