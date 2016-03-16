set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'
Plugin 'crusoexia/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/neocomplete'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'easymotion/vim-easymotion'

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
set shell=bash
set noswapfile
set expandtab
set autoindent
set smartindent
set number
let mapleader=","
set showtabline=2
set listchars=tab:\.\ ,trail:·
set list
set encoding=utf-8
set autowrite
set autoread
set tabstop=4
set shiftwidth=4
set regexpengine=1

let NERDTreeIgnore=['\.vim$', '\~$', '^Godeps$']
let NERDTreeShowHidden=1

au! BufRead,BufNewFile *.json set filetype=json

autocmd VimEnter * NERDTreeToggle
autocmd TabEnter * NERDTreeToggle
autocmd BufReadPost * TagbarOpen

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nmap <F8> :TagbarToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>l :wincmd l<CR>
nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>s <Plug>(easymotion-prefix)

set noerrorbells visualbell t_vb=

if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f)
let g:EasyMotion_smartcase = 1
