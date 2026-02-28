syntax enable
set ts=4
set expandtab
set nocompatible              " be iMproved, required
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
filetype off                  " required
set cul
set nu

" highlight VertSplit ctermbg=50 ctermfg=10
set listchars=tab:▸\ ,space:·,trail:·,extends:→,precedes:←

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'

Plugin 'vim-scripts/taglist.vim'

Plugin 'kien/ctrlp.vim'

Plugin 'itchyny/lightline.vim'

Plugin 'mileszs/ack.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'mhinz/vim-startify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" NERDTree config
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeWinPos = 'left'
let g:NERDTreeSize = 30
let g:NERDTreeShowLineNumbers = 1
" let g:NERDTreeHidden=0

let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 30

" Resize window
nnoremap <S-Up> :resize -1<CR>
nnoremap <S-Down> :resize +1<CR>
nnoremap <S-Left> :vertical resize -1<CR>
nnoremap <S-Right> :vertical resize +1<CR>

" Configure Ack
nnoremap <c-u> :Ack<space>--ignore-file=is:tags<space>

" Configure Git blame
nnoremap <c-g> :Git blame<CR>

set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Configure YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python3'
