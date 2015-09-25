let mapleader="\<Space>"
set nocompatible              " be iMproved, required
filetype off                  " required

nmap 0 ^

nmap k gk " to move through wrapped lines of text and not skip them
nmap j gj 

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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" vim-rspec
let g:rspec_command = "call VtrSendCommand('rspec {spec}')"

" vim-rspec key configurations
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>


" mapping for vim-tmux runner
let g:VtrUseVtrMaps = 1

map <Leader>sf :VtrSendFile<CR>
map <Leader>ap :VtrAttachToPane<CR>

" insert mode mappings
imap jk <esc>:w<CR>
imap kj <esc>:w<CR>
