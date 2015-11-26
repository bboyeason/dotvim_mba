set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'scrooloose/nerdtree'
" 这个插件可以显示文件的Git增删状态
"Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on
syntax on
filetype on
set ic
set nu
set ru
set hlsearch
set incsearch
set cursorline
set ruler
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

""
"Taglist
""
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
map <C-l> :Tlist<CR>
map <C-]> :ts<CR>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1

""
"NERD Tree
""
map <C-n> :NERDTreeToggle<CR>
"Auto open NERD Tree window once you execute vim without any parameters
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Auto close NERD Tree window once you close file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"let g:NERDTreeMinimalUI = 1
let g:NERDChristmasTree = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"MACVIM
"if has("gui_running")
"    let s:uname = system("uname")
"    if s:uname == "Darwin\n"
"        set guifont=Inconsolata\ for\ Powerline:h15
"    endif
"endif

"Vim-PowerLine
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim

" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
 
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
  
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
    augroup END
endif
                                  
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

""
"YouCompleteMe
""
let g:ycm_confirm_extra_conf = 0
