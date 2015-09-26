let mapleader="\<Space>"
set nocompatible              " be iMproved, required
filetype off                  " required

nmap 0 ^

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set relativenumber

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

execute pathogen#infect()
syntax enable
set background=dark
colorscheme solarized

filetype plugin indent on

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" vim-rspec
"let g:rspec_command = "call VtrSendCommand('rspec {spec}')"
let g:rspec_command = "Dispatch rspec {spec}"

" vim-rspec key configurations
map <Leader>t :w<cr>:call RunCurrentSpecFile()<CR>
map <Leader>s :w<cr>:call RunNearestSpec()<CR>
map <Leader>l :w<cr>:call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>


" mapping for vim-tmux runner
let g:VtrUseVtrMaps = 1

map <Leader>sf :VtrSendFile<CR>
map <Leader>ap :VtrAttachToPane<CR>

" insert mode mappings
imap jk <esc>:w<CR>
imap kj <esc>:w<CR>
