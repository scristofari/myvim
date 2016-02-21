set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'crusoexia/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/neocomplete'

call vundle#end()            " required
filetype plugin indent on    " required

" color
syntax enable
colorscheme monokai

" go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" IDE
set number
set showtabline=2
set listchars=tab:\.\ ,trail:·
set list
set encoding=utf-8
set autowrite
set autoread

autocmd VimEnter * NERDTreeToggle
autocmd TabEnter * NERDTreeToggle
autocmd BufReadPost * TagbarOpen

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

nmap <F8> :TagbarToggle<CR>
