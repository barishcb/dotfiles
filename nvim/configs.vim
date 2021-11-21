" ===================================================================
" Customization
" ===================================================================
set nocompatible              " vim, not vi
let &t_TI = ""
let &t_TE = ""

" This shows what you are typing as a command.  I love this!
set showcmd

" Who doesn't like autoindent?
set autoindent

" activates filetype detection
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins

" activates syntax highlighting among other things
syntax on

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

" just hit backspace without this one and
" see for yourself
set backspace=indent,eol,start
set encoding=UTF-8

" Line Numbers PWN!
" turn hybrid line numbers on
set number relativenumber

" Tabs and stuff, as I am mostly coding on Python and C++
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Spaces are better than a tab character
set expandtab
"set smarttab

" Search configurations
" setting the incremental serach option for vim
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
" set showmatch                 " show matching bracket

" setting the clipboard configuration
set clipboard=unnamedplus

" Restore cursor position on buffer navigation
autocmd BufEnter * silent! normal! g`"

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
    set spl=en spell
    set nospell
endif

" Real men use gcc
compiler gcc

" Enable mouse support in console
set mouse=a

" From https://github.com/knubie/dotfiles/blob/fe7967f875945e54d49fc672f575c47691a1e4cc/.vimrc#L136
augroup ReduceNoise
    autocmd!
    " Automatically resize active split to 85 width
    autocmd WinEnter * :call ResizeSplits()

    autocmd WinEnter * setlocal signcolumn=auto
    autocmd WinLeave * setlocal signcolumn=no

    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline

augroup END

function! ResizeSplits()
    if &ft == 'nerdtree'
        return
    elseif &ft == 'qf'
        " Always set quickfix list to a height of 10
        resize 10
        return
    else
        set winwidth=150
        wincmd =
    endif
endfunction

" Trim whitespaces before saving the file
autocmd BufWritePre * :%s/\s\+$//e

" Automatically source init.vim on save
" autocmd! bufwritepost $MYVIMRC source $MYVIMRC
