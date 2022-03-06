set nu
set mouse=a
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

""""""""""""
" vim-plug "
""""""""""""
call plug#begin('~/.config/nvim/plugged')
Plug 'mhinz/vim-startify'                               "开始界面
Plug 'Yggdroot/indentLine'                              "代码缩进标识
Plug 'vim-airline/vim-airline'                          "状态栏美化
Plug 'gcmt/wildfire.vim'                                "回车选取代码块
Plug 'tpope/vim-surround'                               "包裹更改
Plug 'junegunn/fzf.vim'                                 "fzf
call plug#end()
