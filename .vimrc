let mapleader="\<Space>"
set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

if has("autocmd")
  filetype indent plugin on
endif

runtime macros/matchit.vim
nmap 0 ^

set encoding=utf8
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set relativenumber
set number
set splitbelow
set splitright
set ignorecase
set smartcase
set previewheight=15
set winwidth=84
set winheight=20
set winminheight=15
set winheight=999
set clipboard=unnamed
set completeopt=longest,menu,preview

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1


set background=dark
colorscheme solarized

filetype plugin indent on

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'slim-template/vim-slim'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'honza/vim-snippets'
Plugin 'vim-syntastic/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-user'
Plugin 'skalnik/vim-vroom'
Plugin 'ervandew/supertab'
Plugin 'duggiefresh/vim-easydir'
Plugin 'majutsushi/tagbar'
Plugin 'kylef/apiblueprint.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'christoomey/vim-conflicted'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'danchoi/ri.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'timonv/vim-cargo'
Plugin 'townk/vim-autoclose'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'matze/vim-move'
Plugin 'moll/vim-node'
Plugin 'prettier/vim-prettier'
Plugin 'suan/vim-instant-markdown'
Plugin 'jparise/vim-graphql'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sirver/ultisnips'
Plugin 'epilande/vim-react-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax enable
filetype plugin indent on    " required
autocmd BufNewFile,BufRead *.slim set ft=slim

" vim-rspec
"let g:rspec_command = "call VtrSendCommand('rspec {spec}')"
let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" vim-rspec key configurations
map <Leader>t :w<cr>:call RunCurrentSpecFile()<CR>
map <Leader>s :w<cr>:call RunNearestSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:user_emmet_leader_key='<Leader>y'

" mapping for vim-tmux runner
let g:VtrUseVtrMaps = 1

map <Leader>sf :VtrSendFile<CR>
map <Leader>ap :VtrAttachToPane<CR>

" insert mode mappings
inoremap jk <esc>:w<CR>
inoremap kj <esc>:w<CR>
:command! W w
:command! Q q
:command! Qa qa


" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

map <Leader>m :SyntasticToggleMode<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'client\node_modules\|DS_Store\|git'

let g:ctrlp_working_path_mode = 'ra'

map <Leader>h :noh<CR>

nmap <Leader>gs :Gstatus<cr>

autocmd FileType ruby nmap <leader>g :grep -ir <c-r><c-w> app<cr>
nmap <leader>G :grep -ir  app<left><left><left><left>
nmap [q :cprevious<cr>
nmap ]q :cnext<cr>

let g:lightline = {
      \ 'colorscheme': 'solarized_dark',
      \ }

nmap <Leader>b :TagbarToggle<CR>
nmap <Leader>i mmgg=G`m<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>l :redraw!<CR>
map <Leader>p :Prettier<CR>

set tags+=gems.tags

let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:prettier#config#bracket_spacing = 'true'
set macligatures

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_echo_current_diagnostic = 0
let g:ycm_show_diagnostics_ui = 0
